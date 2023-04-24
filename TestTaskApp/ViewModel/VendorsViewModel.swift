//
//  ReadData.swift
//  TestTaskApp
//
//  Created by Maksim Skrypka on 20.04.2023.
//

import Foundation

class VendorsViewModel: ObservableObject {
    @Published var vendors = [Vendor]()
    @Published var searchText = ""

    init() {
        
        loadData()
    }
    
    private func loadData() {
        guard let url = Bundle.main.url(forResource: "vendors", withExtension: "json") else {
            return
        }
        
        guard let data = try? Data(contentsOf: url),
              let vendorsDecode = try? JSONDecoder().decode(Vendors.self, from: data) else {
            return
        }
        
        self.vendors = vendorsDecode.vendors
        // Sorted company by alphabet
        self.vendors.sort { $0.companyName < $1.companyName
            
            
        }
        
    }

    // Method search company
    
    func searchCompany() -> [Vendor] {

        guard searchText.count >= 3 else {
            return vendors
            
        }

        let filteredVendors = vendors.filter { vendor in
            return vendor.companyName.lowercased().contains(searchText.lowercased())

        }
        return filteredVendors
                
    }


}


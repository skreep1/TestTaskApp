//
//  SearchViewModel.swift
//  TestTaskApp
//
//  Created by Maksim Skrypka on 22.04.2023.
//

import Foundation

class SearchViewModel: ObservableObject {
    
    @Published var vendors = [Vendor]()
    @Published var searchText = ""
    
    
    func filteredVendors() -> [Vendor] {
        if searchText.isEmpty {
            return vendors
        } else {
            return vendors.filter { vendor in
                vendor.companyName.lowercased().contains(searchText.lowercased())
            }
        }
    }
}

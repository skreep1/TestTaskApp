//
//  VendorViewModel.swift
//  TestTaskApp
//
//  Created by Maksim Skrypka on 20.04.2023.
//

import Foundation

class VendorViewModel: ObservableObject {
    @Published var vendors: [Vendor] = []
    
    init() {
        if let path = Bundle.main.path(forResource: "vendors", ofType: "json") {
            do {
                let jsonData = try Data(contentsOf: URL(fileURLWithPath: path))
                let decoder = JSONDecoder()
                self.vendors = try decoder.decode([Vendor].self, from: jsonData)
            } catch {
                print("Error parsing JSON file: \(error)")
            }
        }
    }
}

//
//  ApiManage.swift
//  TestTaskApp
//
//  Created by Maksim Skrypka on 20.04.2023.
//

import Foundation

class ApiManager {
    
    private let characterUrl = "https://github.com/urlaunched-com/iOSMiddleTestTask/blob/main/vendors.json"
    
        func fetchCharacter(comp: @escaping ([Vendor]) -> ()) {
            let api = URL(string: characterUrl)
            
            URLSession.shared.dataTask(with: api!) { data, response, error in
                if error != nil { print("error")
                    return
                }
                
                do {
                let result =  try JSONDecoder().decode(Vendors.self, from: data!)
                    comp(result.vendors)
                } catch {
                    
                }
            } .resume()
        }
    
}

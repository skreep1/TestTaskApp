////
////  JsonManager.swift
////  TestTaskApp
////
////  Created by Maksim Skrypka on 20.04.2023.
////
//
//import Foundation
//
//// This file was generated from JSON Schema using quicktype, do not modify it directly.
//// To parse the JSON, add this file to your project and do:
////
////   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)
//
//import Foundation
//
//// MARK: - Welcome
//struct Vendors: Codable {
//    let vendors: [Vendor]
//    
//    // Generate samples
////      static let allVendors: [Vendor] = Bundle.main.decode(file: "vendors.json")
////      static let sampleVendors: Vendor = allVendors[0]
//}
//
//// MARK: - Vendor
//struct Vendor: Codable, Identifiable {
//    let id: Int
//    let companyName, areaServed, shopType: String
//    let favorited, follow: Bool
//    let businessType: String
//    let coverPhoto: CoverPhoto
//    let categories: [Category]
//    let tags: [Tag]
//    
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case companyName = "company_name"
//        case areaServed = "area_served"
//        case shopType = "shop_type"
//        case favorited, follow
//        case businessType = "business_type"
//        case coverPhoto = "cover_photo"
//        case categories, tags
//    }
//}
//
//// MARK: - Category
//struct Category: Codable, Identifiable {
//    let id: Int
//    let name: String
//    let image: CoverPhoto
//}
//
//// MARK: - CoverPhoto
//struct CoverPhoto: Codable {
//    let id: Int
//    let mediaURL: String
//    let mediaType: MediaType
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case mediaURL = "media_url"
//        case mediaType = "media_type"
//    }
//}
//
//enum MediaType: String, Codable {
//    case image = "image"
//}
//
//// MARK: - Tag
//struct Tag: Codable {
//    let id: Int
//    let name, purpose: String
//}
//
////extension Bundle {
////    func decode<T: Decodable>(file: String) -> T {
////        guard let url = self.url(forResource: file, withExtension: nil) else {
////            fatalError("Could not find \(file) in bundle.")
////        }
////
////        guard let data = try? Data(contentsOf: url) else {
////            fatalError("Could not load \(file) from bundle.")
////        }
////
////        let decoder = JSONDecoder()
////
////        guard let loadedData = try? decoder.decode(T.self, from: data) else {
////            fatalError("Could not decode \(file) from bundle.")
////        }
////
////        return loadedData
////    }
////}

//
//  VendorCardView.swift
//  TestTaskApp
//
//  Created by Maksim Skrypka on 21.04.2023.
//

import SwiftUI

struct VendorCardView: View {
    @ObservedObject var viewModel = VendorsViewModel()
    
    var body: some View {
        
        VStack {
            ZStack {
                TextField("Search...", text: $viewModel.searchText)
                    .font(.system(size: 16))
                    .foregroundColor(Color("\(Colors.greyPrimary)"))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(16)
                    .padding()
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                HStack {
                    Spacer()
                    Image("icon_search")
                        .padding(.trailing, 40)
                }
            }
            ScrollView(.vertical, showsIndicators: false) {
                
                if viewModel.searchCompany().isEmpty {
                    NoSearchResultView()
                        .frame(height: 600)
                    
                } else {
                    
                    ForEach(viewModel.searchCompany()) { venor in
                        ZStack {
                            AsyncImage(url: URL(string: venor.coverPhoto.mediaURL)) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 200)
                                    .cornerRadius(10)
                                    .padding()
                                
                                
                            } placeholder: {
                                ProgressView()
                            }
                            HStack {
                                Spacer()
                                VStack {
                                    Button(action: {
                                        print("btn")
                                    }) {
                                        Image(systemName: "bookmark")
                                            .foregroundColor(venor.favorited ? Color.white : Color("\(Colors.green)"))
                                            .padding()
                                            .background(venor.favorited ? Color("\(Colors.green)") : Color.white)
                                            .cornerRadius(40)
                                            .padding(.trailing, 40)
                                            .padding(.top, 40)
                                    }
                                    
                                    
                                    Spacer()
                                }
                            }
                            HStack {
                                Text(venor.areaServed)
                                    .foregroundColor(Color.black)
                                    .font(.custom("OpenSans-Medium", size: 16))
                                    .padding()
                                    .background(Color.white.opacity(0.9))       .cornerRadius(16)
                                    .padding(.leading, 40)
                                    .padding(.top, 80)
                                Spacer()
                            }
                        }
                        HStack {
                            Text(venor.companyName)
                                .font(.custom("OpenSans-Medium", size: 16))
                                .foregroundColor(Color("\(Colors.greyPrimary)"))
                                .padding()
                            Spacer()
                            
                        }
                        HStack{
                            
                            ForEach(venor.categories, id: \.id) { category in
                                SVGWebView(svgURL: URL(string: "\(category.image.mediaURL)")!)
                                    .frame(width: 22, height: 22)
                                
                                
                                Text(category.name)
                                    .font(.custom("OpenSans-Light", size: 14))
                                    .foregroundColor(Color("\(Colors.greyPrimary)"))
                                
                            }
                            Spacer()
                            
                        }
                        
                        HStack {
                            ForEach(venor.tags, id: \.id) { tag in
                                Circle()
                                    .fill(Color("\(Colors.greySecondary)"))
                                    .frame(width: 3, height: 3)
                                    .padding(.leading, 8)
                                
                                Text(tag.name)
                                    .font(.custom("OpenSans-Light", size: 14))
                                    .foregroundColor(Color("\(Colors.greySecondary)"))
                                
                            }
                            Spacer()
                        }
                        
                        
                    }
                }
            }
        }
        
    }
    
    
}

struct VendorCardView_Previews: PreviewProvider {
    static var previews: some View {
        VendorCardView()
    }
}

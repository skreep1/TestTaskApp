//
//  NoSearchResultView.swift
//  TestTaskApp
//
//  Created by Maksim Skrypka on 22.04.2023.
//

import SwiftUI

struct NoSearchResultView: View {
    var body: some View {
        ZStack {
            Color("\(Colors.background)")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Sorry! No results found...")
                    .font(.custom("OpenSans-Bold", size: 24))
                    .foregroundColor(Color("\(Colors.darkGreen)"))
                    .padding()
                
                Text("Please try a different search request or browse businesses from the list")
                    .font(.custom("OpenSans-Light", size: 16))
                    .foregroundColor(Color("\(Colors.greyPrimary)"))
                    .multilineTextAlignment(.center)
            }
        }
    }
}
struct NoSearchResultView_Previews: PreviewProvider {
    static var previews: some View {
        NoSearchResultView()
    }
}

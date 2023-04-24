//
//  ContentView.swift
//  TestTaskApp
//
//  Created by Maksim Skrypka on 20.04.2023.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @ObservedObject var data = VendorsViewModel()

    var body: some View {
        
        ZStack {
            Color("\(Colors.background)")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                VendorCardView()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


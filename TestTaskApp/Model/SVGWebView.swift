//
//  SVGWebView.swift
//  TestTaskApp
//
//  Created by Maksim Skrypka on 24.04.2023.
//

import Foundation
import SwiftUI
import WebKit

struct SVGWebView: UIViewRepresentable {
    let svgURL: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: svgURL)
        webView.load(request)
    }
}


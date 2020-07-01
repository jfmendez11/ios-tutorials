//
//  WebView.swift
//  H4X0R News
//
//  Created by Juan Felipe Méndez on 30/06/20.
//  Copyright © 2020 Juan Felipe Méndez. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = urlString {
            if let url = URL(string: url) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

//
//  WebView.swift
//  H4X0R News
//
//  Created by Òscar Muntal on 1/4/23.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let safeString = urlString,
              let url = URL(string: safeString) else { return }
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

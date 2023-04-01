//
//  DetailView.swift
//  H4X0R News
//
//  Created by Òscar Muntal on 1/4/23.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let safeString = urlString,
              let url = URL(string: safeString) else { return }
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

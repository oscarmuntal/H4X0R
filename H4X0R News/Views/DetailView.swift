//
//  DetailView.swift
//  H4X0R News
//
//  Created by Òscar Muntal on 1/4/23.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

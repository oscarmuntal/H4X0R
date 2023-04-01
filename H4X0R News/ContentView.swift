//
//  ContentView.swift
//  H4X0R News
//
//  Created by Òscar Muntal on 1/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Hello, world!")
                Text("Good by world!")
            }
            .navigationBarTitle("H4X0R NEWS")
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

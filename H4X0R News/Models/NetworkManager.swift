//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by Òscar Muntal on 1/4/23.
//

import Foundation

class NetworkManager {
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                guard error == nil else { return }
                let decoder = JSONDecoder()
                if let safeData = data {
                    do {
                        let results = try decoder.decode(Results.self, from: safeData)
                    } catch {
                        print(error)
                    }
                }
            }
            task.resume()
        }
    }
}

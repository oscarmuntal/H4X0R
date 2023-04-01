//
//  PostData.swift
//  H4X0R News
//
//  Created by Òscar Muntal on 1/4/23.
//

import Foundation

//PostData
struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}

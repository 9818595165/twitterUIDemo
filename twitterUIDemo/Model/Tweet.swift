//
//  Tweet.swift
//  twitterUIDemo
//
//  Created by Prabhat Pankaj on 02/11/23.
//

import Foundation


struct Tweet: Identifiable, Decodable {
    var id: String = UUID().uuidString
    let caption: String
    var likes: Int
    var user: User?
    var didLike: Bool? = false
}

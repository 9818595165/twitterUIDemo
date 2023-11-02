//
//  User.swift
//  twitterUIDemo
//
//  Created by Prabhat Pankaj on 02/11/23.
//

import Foundation

struct User: Identifiable, Decodable {
    var id: String = UUID().uuidString
    
    let username: String
    let fullname: String
    let profileImageUrl: String
}

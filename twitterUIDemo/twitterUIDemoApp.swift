//
//  twitterUIDemoApp.swift
//  twitterUIDemo
//
//  Created by Prabhat Pankaj on 01/11/23.
//

import SwiftUI

@main
struct twitterUIDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ProfileView(user: User(username: "prabhat123", fullname: "Prabhat Pankaj", profileImageUrl: "https://media.licdn.com/dms/image/D4D35AQH-FGhhGoeU-g/profile-framedphoto-shrink_100_100/0/1693923222212?e=1699524000&v=beta&t=UzCfuANJfQynZSuVD_wE4gxPkHDvWmjJo_f-i5-X6sM"))
        }
    }
}

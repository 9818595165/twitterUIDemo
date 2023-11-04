//
//  TweetRowViewModel.swift
//  twitterUIDemo
//
//  Created by Prabhat Pankaj on 02/11/23.
//

import Foundation

class TweetRowViewModel: ObservableObject {
    @Published var tweet: Tweet
    init(tweet: Tweet) {
        self.tweet = tweet
    }
}

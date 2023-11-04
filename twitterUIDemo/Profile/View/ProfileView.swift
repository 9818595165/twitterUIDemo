//
//  ProfileView.swift
//  TwitterCloneSwiftUI
//
//  Created by Vipin Saini on 21/04/22.
//

import SwiftUI
import Kingfisher

struct ProfileView: View {
    @ObservedObject var viewModel: ProfileViewModel
    @Environment(\.presentationMode) var mode
    @Namespace var animation
    init(user: User) {
        self.viewModel = ProfileViewModel(user: user)
    }
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            userInfoDetails
            tweetFilterBar
            tweetsView
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

extension ProfileView {
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color.themeColor
                .ignoresSafeArea()
            VStack {
                KFImage(URL(string: viewModel.user.profileImageUrl))
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y: 24)
            }
        }
        .frame(height: 96)
    }
    var userInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text(viewModel.user.fullname)
                    .font(.title2).bold()
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color.themeColor)
            }
            Text("@\(viewModel.user.username)")
                .font(.subheadline)
                .foregroundColor(.gray)
         }
        .padding(.top)
        .padding(.horizontal)
    }
    var tweetFilterBar: some View {
        HStack {
                VStack {
                    Text("Tweets")
                        .font(.subheadline)
                        .fontWeight(.semibold )
                        .foregroundColor(.black)
                    Capsule()
                        .foregroundColor(Color.themeColor)
                        .frame(height: 3)
                }
        }
        .overlay(Divider().offset(x: 0, y: 16))
    }
    var tweetsView: some View {
        ScrollView {
            LazyVStack {
                ForEach(viewModel.fetchUserTweets()) { tweet in
                    TweetRowView(tweet: tweet)
                        .padding()
                }
            }
        }
    }
}

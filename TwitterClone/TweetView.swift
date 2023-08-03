//
//  ContentView.swift
//  TwitterClone
//
//  Created by Logan Koshenka on 8/1/23.
//

import SwiftUI

struct TweetView: View {
    var tweet: Tweet = Tweet(displayName: "Logan Koshenka", username: "@logankoshenka", hoursAgo: 15, photo: "riserooThumbnail", tweet: "Young problems are hard to detect, but easy to fix. But if you let them fester, they'll become easy to detect, hard to fix.", replies: 7, retweets: 12, likes: 23, impressions: 12)
    
    var body: some View {
        HStack {
            Image(tweet.photo)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 4) {
                    Text(tweet.displayName)
                        .fontWeight(.bold)
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(.blue)
                    Text(tweet.username)
                        .font(.caption)
                    Text("∙")
                        .font(.caption)
                    Text("\(tweet.hoursAgo)h")
                        .font(.caption)
                    
                    Image(systemName: "ellipsis")
                        .foregroundColor(.gray)
                }
                
                Text(tweet.tweet)
                    .font(.body)
                    .padding(.bottom)
                
                HStack(alignment: .bottom, spacing: 20) {
                    Label("\(tweet.replies)", systemImage: "bubble.left")
                    Label("\(tweet.retweets)", systemImage: "arrow.2.squarepath")
                    Label("\(tweet.likes)", systemImage: "heart")
                    Label("\(tweet.impressions)K", systemImage: "chart.bar.xaxis")
                    Image(systemName: "square.and.arrow.up")
                }
                .frame(height: 16)
                .foregroundColor(.primary)
                
            }
        }
        .padding(5)
    }
}

struct Tweet: Identifiable {
    var id = UUID().uuidString
    var displayName: String
    var username: String
    var hoursAgo: Int
    var photo: String
    var tweet: String
    var replies: Int
    var retweets: Int
    var likes: Int
    var impressions: Int
}

let tweets: [Tweet] = [
    Tweet(displayName: "Andrew", username: "@andrew123", hoursAgo: 2, photo: "avatar1", tweet: "Just discovered Logan Koshenka's YouTube channel - what a gem! Don't forget to subscribe! #Youtube", replies: 12, retweets: 34, likes: 123, impressions: 567),
    Tweet(displayName: "Bob", username: "@bob123", hoursAgo: 3, photo: "avatar2", tweet: "Beautiful day for a walk in the park. 🌳☀️", replies: 3, retweets: 10, likes: 50, impressions: 200),
    Tweet(displayName: "Charlie", username: "@charlie123", hoursAgo: 6, photo: "avatar3", tweet: "Just finished reading a great book! 📚 #Reading", replies: 8, retweets: 22, likes: 75, impressions: 300),
    Tweet(displayName: "Katherine", username: "@kat123", hoursAgo: 12, photo: "avatar4", tweet: "Loving the new Swift updates! #SwiftLang", replies: 17, retweets: 50, likes: 200, impressions: 500),
    Tweet(displayName: "Eve", username: "@eve123", hoursAgo: 1, photo: "avatar5", tweet: "Coffee and code ☕️💻 #DevLife", replies: 5, retweets: 30, likes: 150, impressions: 350),
    Tweet(displayName: "Monica", username: "@monica123", hoursAgo: 24, photo: "avatar6", tweet: "Just completed a marathon 🏃‍♂️💨", replies: 4, retweets: 10, likes: 60, impressions: 250),
    Tweet(displayName: "Grace", username: "@grace123", hoursAgo: 8, photo: "avatar7", tweet: "Baking a cake today 🍰 #Baking", replies: 6, retweets: 15, likes: 80, impressions: 300),
    Tweet(displayName: "Hank", username: "@hank123", hoursAgo: 10, photo: "avatar8", tweet: "Working on a new SwiftUI project! #SwiftUI", replies: 10, retweets: 25, likes: 100, impressions: 400),
    Tweet(displayName: "Ivy", username: "@ivy123", hoursAgo: 5, photo: "avatar9", tweet: "Playing piano is so calming 🎹 #Music", replies: 3, retweets: 12, likes: 65, impressions: 275),
    Tweet(displayName: "Jack", username: "@jack123", hoursAgo: 7, photo: "avatar1", tweet: "Can't wait for the new Star Wars movie! #StarWars", replies: 8, retweets: 23, likes: 90, impressions: 350),
    Tweet(displayName: "Katie", username: "@katie123", hoursAgo: 9, photo: "avatar2", tweet: "Just visited the new art exhibition downtown 🖼️ #Art", replies: 7, retweets: 20, likes: 85, impressions: 325),
    Tweet(displayName: "Leo", username: "@leo123", hoursAgo: 15, photo: "avatar3", tweet: "The weather is great today! Perfect for a bike ride 🚴‍♂️", replies: 6, retweets: 18, likes: 80, impressions: 310),
    Tweet(displayName: "Mia", username: "@mia123", hoursAgo: 4, photo: "avatar4", tweet: "Love cooking new recipes! #Cooking", replies: 5, retweets: 15, likes: 75, impressions: 305),
    Tweet(displayName: "Nick", username: "@nick123", hoursAgo: 14, photo: "avatar5", tweet: "Enjoying a quiet evening with a good book 📖", replies: 4, retweets: 14, likes: 70, impressions: 300),
    Tweet(displayName: "Olivia", username: "@olivia123", hoursAgo: 11, photo: "avatar6", tweet: "Excited about my new painting project 🎨 #Art", replies: 5, retweets: 16, likes: 80, impressions: 320),
    Tweet(displayName: "Peter", username: "@peter123", hoursAgo: 13, photo: "avatar7", tweet: "Going hiking this weekend! Can't wait 🌲 #Hiking", replies: 6, retweets: 17, likes: 85, impressions: 325),
    Tweet(displayName: "Quinn", username: "@quinn123", hoursAgo: 16, photo: "avatar8", tweet: "Spending the day at the beach 🏖️ #BeachDay", replies: 7, retweets: 20, likes: 90, impressions: 350),
    Tweet(displayName: "Rachel", username: "@rachel123", hoursAgo: 17, photo: "avatar9", tweet: "Had a great time at the concert last night 🎶 #LiveMusic", replies: 8, retweets: 24, likes: 100, impressions: 400),
    Tweet(displayName: "Steve", username: "@steve123", hoursAgo: 18, photo: "avatar1", tweet: "Enjoying a homemade pizza tonight 🍕 #Foodie", replies: 9, retweets: 26, likes: 110, impressions: 425),
    Tweet(displayName: "Tina", username: "@tina123", hoursAgo: 19, photo: "avatar2", tweet: "Loving the new series I started on Netflix 🎥 #Netflix", replies: 10, retweets: 28, likes: 120, impressions: 450)
]


struct TweetView_Previews: PreviewProvider {
    static var previews: some View {
        TweetView()
    }
}

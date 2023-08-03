//
//  HomeView.swift
//  TwitterClone
//
//  Created by Logan Koshenka on 8/1/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(tweets) { tweet in
                    TweetView(tweet: tweet)
                    Divider()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

let negativeTweets: [Tweet] = [
    Tweet(displayName: "Andrew", username: "@andrew123", hoursAgo: 2, photo: "avatar1", tweet: "Frustrated with the poor customer service at my internet provider. #CustomerServiceFail", replies: 12, retweets: 34, likes: 123, impressions: 567),
    Tweet(displayName: "Bob", username: "@bob123", hoursAgo: 3, photo: "avatar2", tweet: "Still waiting for the bus. It's been 30 minutes late! #PublicTransportation", replies: 3, retweets: 10, likes: 50, impressions: 200),
    Tweet(displayName: "Charlie", username: "@charlie123", hoursAgo: 6, photo: "avatar3", tweet: "Just heard the sad news about the forest fires. Our planet needs our help. #ClimateChange", replies: 8, retweets: 22, likes: 75, impressions: 300),
    Tweet(displayName: "Katherine", username: "@kat123", hoursAgo: 12, photo: "avatar4", tweet: "Another day, another data breach. This needs to stop. #DataPrivacy", replies: 17, retweets: 50, likes: 200, impressions: 500),
    Tweet(displayName: "Eve", username: "@eve123", hoursAgo: 1, photo: "avatar5", tweet: "Exhausted from this never-ending workload. Need a vacation! #Overworked", replies: 5, retweets: 30, likes: 150, impressions: 350),
    Tweet(displayName: "Monica", username: "@monica123", hoursAgo: 24, photo: "avatar6", tweet: "Just got a parking ticket, even though the meter was broken. #BadDay", replies: 4, retweets: 10, likes: 60, impressions: 250),
    Tweet(displayName: "Grace", username: "@grace123", hoursAgo: 8, photo: "avatar7", tweet: "Really disappointed with the meal I ordered from a new restaurant. #BadFood", replies: 6, retweets: 15, likes: 80, impressions: 300),
    Tweet(displayName: "Hank", username: "@hank123", hoursAgo: 10, photo: "avatar8", tweet: "Worst traffic jam today. Took me 2 hours to get home. #TrafficJam", replies: 10, retweets: 25, likes: 100, impressions: 400),
    Tweet(displayName: "Ivy", username: "@ivy123", hoursAgo: 5, photo: "avatar9", tweet: "Just read about the rising unemployment rates. Sad to see so many people struggling. #Unemployment", replies: 3, retweets: 12, likes: 65, impressions: 275),
    Tweet(displayName: "Jack", username: "@jack123", hoursAgo: 7, photo: "avatar1", tweet: "Had a bad customer experience at the local store today. #BadCustomerService", replies: 8, retweets: 23, likes: 90, impressions: 350)
]




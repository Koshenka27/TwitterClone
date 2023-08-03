//
//  ProfileView.swift
//  TwitterClone
//
//  Created by Logan Koshenka on 8/1/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("riserooThumbnail")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            
            HStack {
                Text("Logan Koshenka")
                    .font(.title2)
                    .fontWeight(.bold)
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.blue)
            }
            
            Text("@logankoshenka")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("ios engineer 🖥️ I build apps on youtube 👇")
                .font(.system(size: 16))
                .padding(.vertical, 6)
            
            HStack {
                Label("Columbus, OH", systemImage: "mappin.and.ellipse")
                    .foregroundColor(.gray)
                Label("youtube.com/c/logankoshenka", systemImage: "link")
                    .foregroundColor(.blue)
            }
            .font(.caption)
            .padding(2)
            
            HStack {
                Label("November 12th", systemImage: "birthday.cake")
                    .foregroundColor(.gray)
                Label("Joined August 2011", systemImage: "calendar")
                    .foregroundColor(.gray)
            }
            .font(.caption)
            .padding(2)
            
            HStack {
                HStack {
                    Text("886")
                        .fontWeight(.bold)
                    Text("Following")
                        .foregroundColor(.gray)
                }
                HStack {
                    Text("998")
                        .fontWeight(.bold)
                    Text("Followers")
                        .foregroundColor(.gray)
                }
            }
            .font(.caption)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

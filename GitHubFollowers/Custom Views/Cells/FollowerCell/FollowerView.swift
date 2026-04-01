//
//  FollowerView.swift
//  GitHubFollowers
//
//  Created by Daniel Felipe Martin Franco on 3/31/26.
//

import SwiftUI

struct FollowerView: View {
    var follower: Follower
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: follower.avatarUrl)) { Image in
                Image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                Image(.avatarPlaceholder)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 8, height: 8)))
            
            Text(follower.login)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.6)

        }
    }
}

#Preview {
    FollowerView(follower: Follower(login: "SeanAllen", avatarUrl: ""))
}

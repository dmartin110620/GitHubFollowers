//
//  User.swift
//  GitHubFollowers
//
//  Created by Daniel Felipe Martin Franco on 1/7/26.
//

import Foundation

nonisolated struct User: Codable {
    let login: String
    let avatarUrl: String
    let htmlUrl: String
    let followersUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let followers: Int
    let following: Int
    let createdAt: Date
}

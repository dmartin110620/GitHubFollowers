//
//  User.swift
//  GitHubFollowers
//
//  Created by Daniel Felipe Martin Franco on 1/7/26.
//

import Foundation

nonisolated struct User: Codable {
    var login: String
    var avatarUrl: String
    var htmlUrl: String
    var followersUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var followers: Int
    var following: Int
    var createdAt: String
}

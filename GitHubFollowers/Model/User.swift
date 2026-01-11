//
//  User.swift
//  GitHubFollowers
//
//  Created by Daniel Felipe Martin Franco on 1/7/26.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarURL: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var followers: Int
    var following: Int
    var followersUrl: String
    var createdAt: String
}

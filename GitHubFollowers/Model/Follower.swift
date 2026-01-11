//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Daniel Felipe Martin Franco on 1/7/26.
//

import Foundation

nonisolated struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}

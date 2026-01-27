//
//  PersistanceManager.swift
//  GitHubFollowers
//
//  Created by Daniel Felipe Martin Franco on 1/26/26.
//

import Foundation

enum PersistanceManager {
    
    static private let defaults = UserDefaults.standard
    
    static func retrieveFavorites(completed: @escaping (Result<[Follower], GFError>) -> Void) {
        
    }
}

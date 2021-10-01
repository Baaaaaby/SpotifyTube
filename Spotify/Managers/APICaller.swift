//
//  APICaller.swift
//  Spotify
//
//  Created by BlueBerry on 2021/09/22.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    private init() {}
    
    public func getCurrentUserProfile(completion: @escaping (Result<UserProfile, Error>) -> Void) {
        
    }
}

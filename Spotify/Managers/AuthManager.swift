//
//  AuthManger.swift
//  Spotify
//
//  Created by BlueBerry on 2021/09/21.
//

//Client ID     30c8733f35bb4271ab9ccec7a87db19b
//Client Secret 962eef986e1a4d09af0bd464d35d95af

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let Clientid = "30c8733f35bb4271ab9ccec7a87db19b"
        static let ClientSecret = "962eef986e1a4d09af0bd464d35d95af"
    }
    
    private init() {}
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    
}

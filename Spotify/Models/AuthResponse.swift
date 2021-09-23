//
//  AuthResponse.swift
//  Spotify
//
//  Created by BlueBerry on 2021/09/24.
//

import Foundation

struct AuthResponse: Codable {
    let access_token: String
    let expires_in: Int
    let refresh_token: String
    let scope: String
}

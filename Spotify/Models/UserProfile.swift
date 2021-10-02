//
//  UserProfile.swift
//  Spotify
//
//  Created by BlueBerry on 2021/09/22.
//

import Foundation

struct UserProfile: Codable {
    let country: String
    let display_name: String
    let email: String
    let explicit_content: [String: Bool]
    let external_urls: [String: String]
    let id: String
    let product: String
    let image: [UserImage]
}

struct UserImage: Codable {
    let url: String
}

//
//  Artist.swift
//  Spotify
//
//  Created by BlueBerry on 2021/09/22.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let external_url: [String: String]
}



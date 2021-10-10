//
//  AudioTrack.swift
//  Spotify
//
//  Created by BlueBerry on 2021/09/22.
//

import Foundation

struct AudioTrack: Codable {
    let album: Album
    let artists: [Artist]
    let available_markets: Int
    let disc_number: Int
    let explicit: Bool
    let external_urls: [String: String]
    let id: String
    let name: String
    let popularity: Int
}

//
//  FeaturedPlaylistsResponse.swift
//  Spotify
//
//  Created by BlueBerry on 2021/10/08.
//

import Foundation

struct FeaturedPlaylistsResponse: Codable {
    let playlist: PlaylistResponse
}

struct PlaylistResponse: Codable {
    let items: [Playlist]
}



struct User: Codable {
    let display_name: String
    let external_urls: [String: String]
    let id: String
}

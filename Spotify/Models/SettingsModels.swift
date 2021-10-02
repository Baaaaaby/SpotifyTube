//
//  SettingsModels.swift
//  Spotify
//
//  Created by BlueBerry on 2021/10/01.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}
    
struct Option {
    let title: String
    let handler: () -> Void
}


//
//  Bookmaker.swift
//  
//
//  Created by zach wick on 11/9/22.
//

import Foundation

struct Bookmaker: Codable {
    let key, title: String
    let lastUpdate: String
    let markets: [Market]

    enum CodingKeys: String, CodingKey {
        case key, title
        case lastUpdate = "last_update"
        case markets
    }
}

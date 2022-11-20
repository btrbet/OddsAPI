//
//  Bookmaker.swift
//  
//
//  Created by zach wick on 11/9/22.
//

import Foundation

public struct Bookmaker: Codable {
    public let key, title: String
    public let lastUpdate: String
    public let markets: [Market]

    enum CodingKeys: String, CodingKey {
        case key, title
        case lastUpdate = "last_update"
        case markets
    }
}

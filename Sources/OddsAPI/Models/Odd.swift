//
//  Odds.swift
//  
//
//  Created by zach wick on 11/9/22.
//

import Foundation

public struct Odd: Codable {
    public let id, sportKey, sportTitle: String
    public let commenceTime: String
    public let homeTeam, awayTeam: String
    public let bookmakers: [Bookmaker]

    enum CodingKeys: String, CodingKey {
        case id
        case sportKey = "sport_key"
        case sportTitle = "sport_title"
        case commenceTime = "commence_time"
        case homeTeam = "home_team"
        case awayTeam = "away_team"
        case bookmakers
    }
}

public typealias Odds = [Odd]

//
//  Odds.swift
//  
//
//  Created by zach wick on 11/9/22.
//

import Foundation

struct Odd: Codable {
    let id, sportKey, sportTitle: String
    let commenceTime: String
    let homeTeam, awayTeam: String
    let bookmakers: [Bookmaker]

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

typealias Odds = [Odd]

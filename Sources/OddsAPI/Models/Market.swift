//
//  Market.swift
//  
//
//  Created by zach wick on 11/9/22.
//

import Foundation

public struct Market: Codable {
    public let key: String
    public let outcomes: [Outcome]
}

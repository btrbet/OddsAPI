//
//  File.swift
//  
//
//  Created by zach wick on 11/9/22.
//

import Foundation

public struct Sports: Codable {
    public let sports: [Sport]
}

public struct Sport: Codable {
    public let key: String
    public let active: Bool
    public let group: String
    public let description: String
    public let title: String
    public let has_outrights: Bool
}

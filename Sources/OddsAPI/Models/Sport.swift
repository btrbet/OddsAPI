//
//  File.swift
//  
//
//  Created by zach wick on 11/9/22.
//

import Foundation

struct Sports: Codable {
    let sports: [Sport]
}

struct Sport: Codable {
    let key: String
    let active: Bool
    let group: String
    let description: String
    let title: String
    let has_outrights: Bool
}

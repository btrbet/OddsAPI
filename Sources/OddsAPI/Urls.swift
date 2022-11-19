//
//  Urls.swift
//  
//
//  Created by zach wick on 11/9/22.
//

import Foundation

@available(macOS 12.0, *)
extension BaseApi {

    private enum Constants {

        static let scheme = "https"
        static let baseUrl = "api.the-odds-api.com"
        static let apiVersion = "/v4/"
        static let keyParameter = "apiKey"

        static let sportsResource = "sports"
        static let oddsResource = "odds"
    }

    func allSportsURL(withKey apiKey: String) -> URL? {
        var components = URLComponents()
        components.scheme = Constants.scheme
        components.host = Constants.baseUrl
        components.path = Constants.apiVersion + Constants.sportsResource
        components.queryItems = [
            URLQueryItem(name: Constants.keyParameter, value: apiKey),
        ]
        return components.url
    }

    func upcomingOddsURL(withKey apiKey: String) -> URL? {
        var components = URLComponents()
        components.scheme = Constants.scheme
        components.host = Constants.baseUrl
        components.path = Constants.apiVersion + Constants.sportsResource + "/upcoming/" + Constants.oddsResource
        components.queryItems = [
            URLQueryItem(name: Constants.keyParameter, value: apiKey),
            URLQueryItem(name: "regions", value: "us"),
            URLQueryItem(name: "markets", value: "h2h,spreads,totals"),
            URLQueryItem(name: "oddsFormat", value: "american")
        ]
        return components.url
    }
}

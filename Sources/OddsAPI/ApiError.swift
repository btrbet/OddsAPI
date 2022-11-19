//
//  ApiError.swift
//  
//
//  Created by zach wick on 11/9/22.
//

enum ApiError: Error {
    case badRequest
    case parsingError
    case unauthorized
    case noResults
    case serverError(code: Int)
    case unknown
}

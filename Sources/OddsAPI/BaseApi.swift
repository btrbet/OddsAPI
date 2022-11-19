//
//  BaseApi.swift
//  
//
//  Created by zach wick on 11/9/22.
//

import Foundation

@available(macOS 12.0, *)
class BaseApi {

    func sendRequest<T: Decodable>(url: URL?, responseModel: T.Type) async -> Result<T, ApiError> {
        
        guard let url = url else {
            return .failure(.badRequest)
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(for: URLRequest(url: url), delegate: nil)
            guard let response = response as? HTTPURLResponse else {
                return .failure(.noResults)
            }
            switch response.statusCode {
            case 200...299:
                guard let decodedResponse = try? JSONDecoder().decode(responseModel, from: data) else {
                    return .failure(.parsingError)
                }
                return .success(decodedResponse)
            case 401:
                return .failure(.unauthorized)
            default:
                return .failure(.serverError(code: response.statusCode))
            }
        } catch {
            return .failure(.unknown)
        }
    }
}

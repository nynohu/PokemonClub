//
//  DefaultHttp.swift
//  PokemonClub
//
//  Created by NgocHung Nguyen on 3/19/23.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case invalidResponse
    case requestFailed
}

class DefaultHttp: Http {
    let environment: Environment
    let urlSession: URLSession
    
    init(
            environment: Environment = AppEnvironment(),
            urlSession: URLSession = URLSession.shared
    ) {
        self.environment = environment
        self.urlSession = urlSession

        URLCache.shared.removeAllCachedResponses()
    }
    
    func get(path: String) async throws -> Any {
        let encodedPath = environment.currentScheme.basePath + (path.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed) ?? "")
        guard let url = URL(string: encodedPath) else {
            throw NetworkError.invalidURL
        }
        
        let (data, response) = try await urlSession.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        return data
    }
    
    func post(request: URLRequest) async throws -> Any {
        Date.now
    }
    
    private func constructRequest(fullUrl: URL) -> URLRequest {
        let request = URLRequest(url: fullUrl)
        return request
    }
}

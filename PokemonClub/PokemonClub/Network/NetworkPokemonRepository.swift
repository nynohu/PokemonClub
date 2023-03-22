//
//  NetworkPokemonRepository.swift
//  PokemonClub
//
//  Created by NgocHung Nguyen on 3/22/23.
//

import Foundation

class NetworkPokemonRepository {
    static let shared = NetworkPokemonRepository()
    private let http: Http
    
    init(http: Http = DefaultHttp()) {
        self.http = http
    }
    
    func getPokemonList() async {
        do {
            let data = try await http.get(path: "") as! Data
            print(String(data: data, encoding: .utf8) ?? "")
        } catch {
            print("error: \(error)")
        }
    }
}

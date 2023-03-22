//
//  Http.swift
//  PokemonClub
//
//  Created by NgocHung Nguyen on 3/19/23.
//

import Foundation

protocol Http {
    func get(path: String) async throws -> Any
    func post(request: URLRequest) async throws -> Any
}


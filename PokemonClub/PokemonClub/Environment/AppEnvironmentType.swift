//
//  AppEnvironmentType.swift
//  PokemonClub
//
//  Created by NgocHung Nguyen on 3/18/23.
//

import Foundation

enum AppEnvironmentType {
    case release
    case debug
    case development
    
    var basePath: String {
        switch self {
        case .release:
            return "https://pokeapi.co/api/v2/"
        case .debug:
            return "https://pokeapi.co/api/v2/"
        case .development:
            return "http://localhost:80/api/v2/"
        }
    }
}

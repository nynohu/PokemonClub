//
//  MainViewModel.swift
//  PokemonClub
//
//  Created by NgocHung Nguyen on 3/22/23.
//

import Foundation

class MainViewModel: ObservableObject {
    private let pokemonRepository: NetworkPokemonRepository
    init(pokemonRepository: NetworkPokemonRepository = NetworkPokemonRepository.shared) {
        self.pokemonRepository = pokemonRepository
    }
    
    func loadPokemon() async {
        await pokemonRepository.getPokemonList()
    }
}

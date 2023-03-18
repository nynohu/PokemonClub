//
//  AppEnvironmentTypeTests.swift
//  PokemonClubTests
//
//  Created by NgocHung Nguyen on 3/18/23.
//

@testable import PokemonClub
import XCTest
import Nimble

class AppEnvironmentTypeTests: XCTestCase {
    func test_basePath() {
        expect(AppEnvironmentType.release.basePath)
            .to(equal("https://pokeapi.co/api/v2/"))
        expect(AppEnvironmentType.debug.basePath)
            .to(equal("https://pokeapi.co/api/v2/"))
        expect(AppEnvironmentType.development.basePath)
            .to(equal("localhost/api/v2/"))
    }
}

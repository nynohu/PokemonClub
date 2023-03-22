//
//  Environment.swift
//  PokemonClub
//
//  Created by NgocHung Nguyen on 3/19/23.
//

import Foundation

protocol Environment {
    var currentScheme: AppEnvironmentType { get }
    var currentDevice: DeviceType { get }
}

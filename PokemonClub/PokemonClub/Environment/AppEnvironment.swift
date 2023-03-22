//
//  AppEnvinronment.swift
//  PokemonClub
//
//  Created by NgocHung Nguyen on 3/18/23.
//

import Foundation

struct AppEnvironment: Environment {
    var currentScheme: AppEnvironmentType {
#if RELEASE
        return .release
#elseif DEBUG
        return .debug
#elseif DEVELOPMENT
        return .development
#else
        return .debug
#endif
    }
    
    var currentDevice: DeviceType {
#if (arch(i386) || arch(x86_64))
        return .simulator
#else
        return .actualDevice
#endif
    }
    
}

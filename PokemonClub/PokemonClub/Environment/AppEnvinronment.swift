//
//  AppEnvinronment.swift
//  PokemonClub
//
//  Created by NgocHung Nguyen on 3/18/23.
//

import Foundation

struct AppEnvinronment {
    var currentScheme: AppEnvironmentType {
#if RELEASE
        return .release
#elseif DEBUG
        return .debug
#else
        return .development
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

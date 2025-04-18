//
//  Team.swift
//  Football Chants Ukit
//
//  Created by baran.ates on 16.04.2025.
//

import Foundation

struct Team {
    let id: TeamType
    let name: String
    let info: String
    let manager: Manager
    let founded: String
    var isPlaying: Bool = false
}

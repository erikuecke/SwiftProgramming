//
//  Monster.swift
//  MonsterTown
//
//  Created by Erik Uecke on 2/14/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

class Monster {
    static let isTerrifying = true
    class var spookyNoise: String {
        return "Grrr"
    }
    // Defining the Monster class
    var town: Town?
    var name: String
    // A getter and a setter
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    // Initializing monster
    required init(town: Town?, monsterName: String) {
        self.town = town
        name = monsterName
    }
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}

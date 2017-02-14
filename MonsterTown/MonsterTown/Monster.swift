//
//  Monster.swift
//  MonsterTown
//
//  Created by Erik Uecke on 2/14/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

class Monster {
    
    // Defining the Monster class
    var town: Town?
    var name = "Monster"
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}

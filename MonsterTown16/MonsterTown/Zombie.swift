//
//  Zombie.swift
//  MonsterTown
//
//  Created by Erik Uecke on 2/14/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

// Zombe class creation
class Zombie: Monster {
    // Creating the spookyNoise Computed type property
    override class var spookyNoise: String {
        return "Brains...."
    }
    var walksWithLimp = true
    // Falling apart is a private matter
    private(set) var isFallingApart = false
    var zombieTerrorPower = 10
    
    final override func terrorizeTown() {
        if !isFallingApart {
            town?.isMonsterAttacking = true
            town?.attackType = .zombie
            
            if let currentPop = town?.population {
                switch currentPop {
                case 0:
                    print("\(self.name) trided terrorizing but everyone's dead..")
                case 1...zombieTerrorPower:
                    town?.population = 0
                default:
                    super.terrorizeTown()
                    town?.changePopulation(by: zombieTerrorPower)
                }
            }
            
            town?.isMonsterAttacking = false
        }
    }
}

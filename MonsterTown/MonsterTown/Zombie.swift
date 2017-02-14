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
    var walksWithLimp = true
    var zombieTerrorPower = 10
    
    final override func terrorizeTown() {
        town?.isMonsterAttacking = true
        
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

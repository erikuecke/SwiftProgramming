//
//  Vampire.swift
//  MonsterTown
//
//  Created by Erik Uecke on 2/14/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

class Vampire: Monster {
    
    var convertedVamps = [Vampire]()
    var vampireTerrorPower = 1
    
    final override func terrorizeTown() {
        town?.isMonsterAttacking = true
        if let currentPop = town?.population {
            switch currentPop {
            case 0:
                print("\(self.name) tried terrorizing but everyone's dead or gone")
                printVampireCount()
            default:
                super.terrorizeTown()
                town?.changePopulation(by: vampireTerrorPower)
                convertedVamps.append(Vampire())
                printVampireCount()
            }
        }
    }
    func printVampireCount() {
        print("There are \(convertedVamps.count) vampires in this town")
    }
}

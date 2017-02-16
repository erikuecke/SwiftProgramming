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
    var walksWithLimp: Bool
    
    // Falling apart is a private matter
    private(set) var isFallingApart: Bool
    var zombieTerrorPower: Int
    
    // Zombie Initializer
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String, power: Int) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        zombieTerrorPower = power
        super.init(town: town, monsterName: monsterName)
    }
    
    // Convenience Initializer
    convenience init(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred", power: 10)
        if walksWithLimp {
            print("This zombie has a bad knee")
        }
    }
    required init(town: Town?, monsterName: String) {
        walksWithLimp = false
        isFallingApart = false
        zombieTerrorPower = 10
        super.init(town: town, monsterName: monsterName)
    }
    
    // Deinitialization
    deinit {
        print("Zombie named \(name) is no longer with us.")
    }
    
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

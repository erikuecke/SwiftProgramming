//
//  Town.swift
//  MonsterTown
//
//  Created by Erik Uecke on 2/14/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

struct Town {
    var mayor = Mayor()
    static let region = "South"
    var population = 5_422 {
        didSet(oldPopulation) {
            if oldPopulation > population {
                 print("The population has changed to \(population) from \(oldPopulation).")
                mayor.offerCondolences(forMonsterAttackType: attackType)
            }
        }
    }
    
    var numberOfStoplights = 4
    var isMonsterAttacking = false

// Nested types
    // Setting up the Size enum
    enum Size {
        case small
        case medium
        case large
    }
    
// Lazy STored Properties
     var townSize: Size {
        get {
            switch self.population {
            case 0...10_000:
                return Size.small
            case 10_001:
                return Size.medium
            default:
                return Size.large
            }
        }
     }
    
    // Letting Town describe itself
    func printDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }
    
    // Gold challenge
    var attackType: AttackType = .monster
    
    enum AttackType {
        case zombie
        case vampire
        case monster
    }
    
    // Adding a mutating method to increase population
    mutating func changePopulation(by amount: Int) {
        if isMonsterAttacking {
            population -= amount
        } else {
            population += amount
        }
    }
}

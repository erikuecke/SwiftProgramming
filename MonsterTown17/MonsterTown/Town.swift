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
    let region: String
    var population: Int {
        didSet(oldPopulation) {
            if oldPopulation > population {
                 print("The population has changed to \(population) from \(oldPopulation).")
                mayor.offerCondolences(forMonsterAttackType: attackType)
            }
        }
    }
    
    var numberOfStoplights: Int
    // Adding a memberWise initializer
    init?(region: String, population: Int, stoplights: Int, isMonsterAttacking attacking: Bool, attackType: AttackType) {
        guard population > 0 else {
            return nil
        }
        self.region = region
        self.population = population
        numberOfStoplights = stoplights
        self.isMonsterAttacking = attacking
        self.attackType = attackType
    }
    
    // Using initializer delegation
    init?(population: Int, stoplights: Int) {
        self.init(region: "N/A", population: population, stoplights: stoplights, isMonsterAttacking: true, attackType: .zombie)
    }
    
    var isMonsterAttacking: Bool

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
        print("Population: \(population); number of stoplights: \(numberOfStoplights); region: \(region)")
    }
    
    // Gold challenge
    var attackType: AttackType
    
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

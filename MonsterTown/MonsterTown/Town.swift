//
//  Town.swift
//  MonsterTown
//
//  Created by Erik Uecke on 2/14/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

struct Town {
    var population = 5_422
    var numberOfStoplights = 4
    var isMonsterAttacking = false
    
    // Letting Town describe itself
    func printDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplights)")
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

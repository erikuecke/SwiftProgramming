//
//  Mayor.swift
//  MonsterTown
//
//  Created by Erik Uecke on 2/15/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

struct Mayor {
    private var anxietyLevel: Int = 0
    mutating func offerCondolences(forMonsterAttackType type: Town.AttackType) {
        print("I'm deaply daddend to hear about this latest tragedy. I promise more to come")
        if type == Town.AttackType.zombie {
            anxietyLevel += 1
            print("Current anxiety: \(anxietyLevel)")
        }
    }
}

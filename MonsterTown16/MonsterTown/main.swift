//
//  main.swift
//  MonsterTown
//
//  Created by Erik Uecke on 2/14/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

var myTown = Town()

// Using lazy townSize property
let myTownSize = myTown.townSize
print(myTownSize)

// Increasing the population 
myTown.changePopulation(by: 1_000_000)
print("\(myTown.townSize); population: \(myTown.population)")

// Who's afraid of fredTheZombie?
let fredTheZombie = Zombie()
fredTheZombie.name = "fredTheZombie"
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

// Testing vampire silver challenge
    let dracula = Vampire()
    dracula.name = "Dracula"
    dracula.town = myTown
    dracula.terrorizeTown()
    dracula.terrorizeTown()
    dracula.terrorizeTown()
    dracula.town?.printDescription()

// a getter and a setter
// Using VictimPool
    print("Victim pool: \(fredTheZombie.victimPool)")
    fredTheZombie.victimPool = 500
    print("Victim pool: \(fredTheZombie.victimPool)")

// "Brains...."
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run Away")
}
















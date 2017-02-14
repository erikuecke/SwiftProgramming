//
//  main.swift
//  MonsterTown
//
//  Created by Erik Uecke on 2/14/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

var myTown = Town()

// Increasing the population 
myTown.changePopulation(by: 500)

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

//
//  main.swift
//  SwiftProgramming24
//
//  Created by Erik Uecke on 2/27/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

// Creating an optional Person
var bob: Person? = Person(name: "Bob")
print("created \(bob)")

// Creating Assets
var laptop: Asset? = Asset(name: "Shiny Laptop", value: 1_500.0)
var hat: Asset? = Asset(name: "Cowboy Hat", value: 175.0)
var backpack: Asset? = Asset(name: "Blue Backpack", value: 45.0)

bob?.useNetWorthChangedHandler { netWorth in
    print("Bob's net worth is now \(netWorth)")
    
}

bob?.takeOwnership(of: laptop!)
bob?.takeOwnership(of: hat!)

print("Whle Bob is alive, hat's owner is \(hat!.owner)")
bob = nil
print("the bob variable is now \(bob)")
print("After Bob is deallocated, hat's owner is \(hat!.owner)")

laptop = nil
hat = nil
backpack = nil






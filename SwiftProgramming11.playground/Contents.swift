//: Playground - noun: a place where people can play

import Cocoa

// Creating a set

//var groceryBag = Set<String>()

//// Adding to a set
//
//groceryBag.insert("Apples")
//groceryBag.insert("Oranges")
//groceryBag.insert("Pineapple")

// Creating a set, redux

var groceryBag = Set(["Apples", "Organges", "Pineapple"])

// Looping through a set

for food in groceryBag {
    print(food)
}

// Has bananas?

let hasBananas = groceryBag.contains("Bananas")

// Combining Sets
let frinedsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
//let commonGroceryBag = groceryBag.union(frinedsGroceryBag)

let commonGroceryBag = groceryBag.formSymmetricDifference(frinedsGroceryBag)
// Intersecting sets

let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersection(roommatesGroceryBag)

// Detecting intersections in sets

let yourSecondBag = Set(["Berries", "Yogurt"])
let roommatesSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjoint(with: roommatesGroceryBag)

// Bronze challenge finding if supersest

let myCities = Set(["Atlanta", "Chicago", "Jacksonville", "New York", "San Francisco"])
let yourCities = Set(["Chicago", "San Francisco", "Jacksonville"])

let isSuperSet = myCities.isSuperset(of: yourCities)
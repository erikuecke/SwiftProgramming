//: Playground - noun: a place where people can play

import Cocoa

// CLOSURES

// CLOSURE SYNTAX

let volunteerCounts = [1, 3, 40, 32, 53, 77, 13]

// Sorting the array

//func sortAscending(_ i: Int, _ j: Int) -> Bool {
//    return i < j
//}
//
//let volunteersSorted = volunteerCounts.sorted(by: sortAscending)

// Refactoring your sorting code - inline closure syntax
//let volunteersSorted = volunteerCounts.sorted(by: {
//    (i: Int, j: Int) -> Bool in
//    return i < j
//})

// Taking advantage of type inference
//let volunteersSorted = volunteerCounts.sorted(by: { i, j in i < j })

// Using shorthand syntax for arguments - trailing closure syntax
let volunteersSorted = volunteerCounts.sorted { $0 > $1 }



// Functions as Return types
// Return to Knowher
//func makeTownGrand() -> (Int, Int) -> Int {
//    func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
//        return lights + existingLights
//    }
//    return buildRoads
//}
//// The roads to knowher
//var stoplights = 4
//let townPlanByAddingLightsToExistingLights = makeTownGrand()
//stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
//print("Knowhere has \(stoplights) stoplights")

// Functions as Arguments
// Adding budget considerations

func makeTownGrand(withBudget budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    
    if condition(budget) {
        func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
            return lights + existingLights
        }
        return buildRoads
    } else {
        return nil
    }
}

func evaluate(budget: Int) -> Bool {
    return budget > 10_000
}

var stoplights = 4

if let townPlanByAddingLightsToExistingLights = makeTownGrand(withBudget: 10_500, condition: evaluate) {
    
    stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
}
stoplights

// Closures Capture Values
// Tracking growth

func makePopulationTracker(forInitialPopulation population: Int) -> (Int) -> Int {
    var totalPopulation = population
    func populationTracker(growth: Int) -> Int {
        totalPopulation += growth
        return totalPopulation
    }
    return populationTracker
}

var currentPopulation = 5_422
let growBy = makePopulationTracker(forInitialPopulation: currentPopulation)
growBy(500)
growBy(500)
growBy(500)
currentPopulation = growBy(500) // currentPopulation is now 7422

// Closures Are Reference Types
// Duplicate growth
let anotherGrowBy = growBy
anotherGrowBy(500) // Total population now equal to 7922

// Another population to track

var bigCityPopulation = 4_061_981
let bigCityGrowby = makePopulationTracker(forInitialPopulation: bigCityPopulation)
bigCityPopulation = bigCityGrowby(10_000)
currentPopulation

// Functional Programming
// Higher-order functions
// map(_:)
// Setting Populations by precinct
let precinctPopulations = [1244, 2021, 2157]

// Using map(_:) to estimate population
let projectedPopulations = precinctPopulations.map {
    (population: Int) -> Int in
    return population * 2
}

projectedPopulations

// filter(_:)
let bigProjections = projectedPopulations.filter {
    (projection: Int) -> Bool in
    return projection > 4000
}
bigProjections

// reduce(_:_:)
// Reducing an array to a single value

let totalProjection = projectedPopulations.reduce(0) {
    (accumulatedProjection: Int, precinctProjection: Int) -> Int in
    return accumulatedProjection + precinctProjection
}
totalProjection


// Bronze challenge 1
volunteerCounts.sorted { $0 < $1 }
print(volunteerCounts)

// Bronze challenge 2
volunteerCounts.sorted()

// Gold challenge
let totalProjectoin = projectedPopulations.reduce(0, { $0 + $1 } )
totalProjection











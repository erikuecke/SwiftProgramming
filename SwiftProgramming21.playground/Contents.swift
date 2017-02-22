//: Playground - noun: a place where people can play

import Cocoa

// Establishing a type alias
typealias Velocity = Double

// Extending Velocity to support mph and kph
extension Velocity {
    var kph: Velocity { return self * 1.60934 }
    var mph: Velocity { return self }
}

// Adding protocol conformance with an extension
protocol Vehicle {
    var topSpeed: Velocity { get }
    var numberOfDoors: Int { get }
    var hasFlatBed: Bool { get }
}

// A car struct
struct Car {
    let make: String
    let model: String
    let year: Int
    let color: String
    let nickname: String
    let numberOfDoors: Int
    var gasLevel: Double {
        willSet {
            precondition(newValue <= 1.0 && newValue >= 0.0, "New value must be between 0 and 1")
        }
    }
}
// Extending Car to conform to Vehicle
extension Car: Vehicle {
    var topSpeed: Velocity { return 180 }
    var hasFlatBed: Bool { return false }
}

// Extending car with an initializer
extension Car {
    init(make: String, model: String, year: Int, numberOfDoors: Int) {
        precondition(numberOfDoors == 4 || numberOfDoors == 2, "You can only have a car with 4 or 2 doors")
        self.init(make: make,
                  model: model,
                  year: year,
                  color: "Black",
                  nickname: "N/A",
                  numberOfDoors: numberOfDoors,
                  gasLevel: 1.0)
    }
}

// An instance of Car
var c = Car(make: "Ford", model: "Fusion", year: 2013, numberOfDoors: 2)

// Creating an extension with a nested type
extension Car {
    enum Kind {
        case coupe, sedan
    }
    var kind: Kind {
        if numberOfDoors == 2 {
            return .coupe
        } else {
            return .sedan
        }
    }
}
c.kind

// Using an extension to add functions
extension Car {
    mutating func emptyGas(by amount: Double) {
        precondition(amount <= 1 && amount > 0, "Amount to remove must be between 0 and 1.")
        if gasLevel < amount {
            gasLevel = 0
        } else {
            gasLevel -= amount
        }
    }
    
    mutating func fillGas() {
        gasLevel = 1.0
    }
}

// Lowering and filling the gas tank
c.emptyGas(by: 0.3)
c.gasLevel
c.fillGas()
c.gasLevel

// Bronze Challenge

extension Int {
    var timeFive: Int { return self * 5 }
}
5.timeFive










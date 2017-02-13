//: Playground - noun: a place where people can play

import Cocoa
//
//enum TextAlignment {
//    case left
//    case right
//    case center
//    case justify
//}

// Creating an instance of TextAligntment
//
//var alignment: TextAlignment = TextAlignment.left

// Taking advantage of type inference
//var alignment = TextAlignment.justify

// Inferring enum type
//alignment = .right

// Type inference when compoaring values
//if alignment == .right {
//    print("We Should right align the text")
//}

// Using raw values
//enum TextAlignment: Int {
//    case left
//    case right
//    case center
//    case justify
//}

// Specifying raw values
enum TextAlignment: Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}

var alignment = TextAlignment.justify

// Switching to switch

switch alignment {
case .left:
    print("left aligned")
case .right:
    print("right aligned")
case .center:
    print("center aligned")
case .justify:
    print("Justified")
}


// Confirming the raw values
print("Left has raw value \(TextAlignment.left.rawValue)")
print("Right has raw value \(TextAlignment.right.rawValue)")
print("Center has raw value \(TextAlignment.center.rawValue)")
print("Justify has raw value \(TextAlignment.justify.rawValue)")
print("The alignment variable has a raw value \(alignment.rawValue)")


// Converting raw values to enum types
// Create a raw value
let myRawValue = 100

// Try to convert the raw value into a TextAlignment
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    // Conversion succeeded!
    print("successfully converted \(myRawValue) into a TextAlignment")
} else {
    // Conversion failed
    print("\(myRawValue) has no corresponding TextAlignment case")
}

// Creating an enum with strings
enum ProgrammingLanguage: String {
    case swift
    case objectiveC = "objective-c"
    case c
    case cpp = "c++"
    case java
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

// Light bulbs can be on or off
enum Lightbulb {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }
    }
    
    // Trying to toggle
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        
        case .off:
            self = .on
        }
    }
}

// Turning on the light
var bulb = Lightbulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)

print("the bubl's temperature is \(bulbTemperature)")

// Turning off the light
bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

// Associated Values
// Setting up ShapeDimensions
enum ShapeDimensions {
    // point has no associated value - it is deminsionless
    case point
    
    // square's associated value is the lenght of one side
    case square(side: Double)
    
    // rectangle's associated value defines its width and height
    case rectangle(width: Double, height: Double)
    
    // right triangle
    case rightTriangle(legA: Double, legB: Double)
    
    // Using associated values to compute area
    func area() -> Double {
        switch self {
        case .point:
            return 0
            
        case let .square(side: side):
            return side * side
            
        case let .rectangle(width: w, height: h):
            return w * h
            
        case let .rightTriangle(legA: a, legB: b):
            return (a * b) / 2
        }
    }
    
    // Bronze challenge
    func perimeter() -> Double {
        switch self {
        case .point:
            return 0.0
        case let .square(side: side):
            return side * 4
        case let .rectangle(width: w, height: h):
            return (w * 2)  + (h * 2)
            
        case let .rightTriangle(legA: a, legB: b):
            return a + b + sqrt(a * a + b * b)
        }
    }
}

// Creating shapes
var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point

// Computing areas
print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")
print("square's perimeter = \(squareShape.perimeter())")
print("rectangle's area = \(rectShape.perimeter())")

// Recursive Enumerations
// An attempt at FamilyTree
 enum Familytree {
    case noKnownParents
    
    indirect case oneKnownParent(name: String, ancestors: Familytree)
    
    indirect case twoKnownParents(fatherName: String, fatherAncestors: Familytree, motherName: String, motherAncestors: Familytree)
}

// Creating a family tree
let fredAncestors = Familytree.twoKnownParents(fatherName: "Fred Sr.", fatherAncestors: .oneKnownParent(name: "Beth", ancestors: .noKnownParents), motherName: "Marsha", motherAncestors: .noKnownParents)

























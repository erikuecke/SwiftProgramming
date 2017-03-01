//: Playground - noun: a place where people can play

import Cocoa

struct Point: Comparable {
    let x: Int
    let y: Int
    
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return (lhs.x == rhs.x) && (lhs.y == rhs.y)
    }
    
    static func <(lhs: Point, rhs: Point) -> Bool {
        return (lhs.x < rhs.x) && (lhs.y < rhs.y)
    }
}

// Creating Two Points
let a = Point(x: 3, y: 4)
let b = Point(x: 3, y: 4)

// Is a the same as b?
let abEqual = (a == b)

let abNotEqual = (a != b)

// Testing the < function
let c = Point(x: 2, y: 6)
let d = Point(x: 3, y: 7)

let cdEqual = (c == d)
let cLessThanD = (c < d)

let cLessThanEqualD = (c <= d)
let cGreaterThanD = (c > d)
let cGreaterThanEqualD = (c >= d)
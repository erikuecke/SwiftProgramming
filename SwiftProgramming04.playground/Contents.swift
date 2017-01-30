//: Playground - noun: a place where people can play

import Cocoa

print("The maximum In value is \(Int.max)")
print("The minimum Int value is \(Int.min)")

print("The maximum value for a 32-bit integer is \(Int32.max)")
print("The minimum value for a 32-bit integer is \(Int32.min)")

print("The maximum UInt value \(UInt.max)")
print("The minimum UInt value \(UInt.min)")

print("The maximum value for a 32 - bit unsigned integer is \(UInt32.max)")
print("The minimum value for a 32 - bit unsigned integer is \(UInt32.min)")

let numberOfPages: Int = 10 // Declares the type explicitly
let numberOfChapters = 3 // Also of typ Int, but infeered by the compiler

let numberOfPeople: UInt = 40
let volumeAdjustment: Int32 = -1000

// Trouble ahead!
//let firstBadValue: UInt = -1
//let secondBadValue: Int8 = 200

print(10 + 20)
print(30 - 5)
print(5 * 6)

print(10 + 2 * 5)
print(30 - 5 - 5)

print((10 + 2) * 5)
print(30 - (5  - 5))

print(11 / 3)

print(11 % 3)
print(-11 % 3)


var x = 10
x += 10 // Is equivalant to: x = x + 10
print("x has had 10 added to it and is now \(x)")
x -= 5 // Is quivalent to : x = x - 5
print("x had had 5 subtracted from it and is now \(x)")

let y: Int8 = 120
//let z = y + 10
let z = y &+ 10
print("120 &+ 10 is \(z)")

// Adding values of different types
let a: Int16 = 200
let b: Int8 = 50
//let c = a + b // uh -oh!

// Converting type to allow addition
let c = a + Int16(b)

// FLOATING POINT NUMBERS

// Declaring floating point number types
let d1 = 1.1 // Implicitly Bouble
let d2: Double = 1.1
let f1: Float = 100.3

// Operations on floating-point numbers
print(10.0 + 11.4)
print(11.0 / 3.0)

// Comparing two floating numbers
if d1 == d2 {
    print("d1 and d2 are the same!")
    
}

// Unexpedted results
print("d1 + 0.1 is \(d1 + 0.1)")
if d1 + 0.1 == 1.2 {
    print("d1 + 0.1 is equal to 1.3")
}





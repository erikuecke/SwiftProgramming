//: Playground - noun: a place where people can play

import Cocoa

// Defining a function

func printGreeting() {
    print("Hello Playground")
}
printGreeting()

// Using a parameter

//func printPersonalGreeting(name: String) {
//    print("Hello \(name), welcome to your playground")
//}
//printPersonalGreeting(name: "Matt")

// Using explicit parameter names
//func printPersonalGreeting(to name: String) {
//    print("Hello \(name), welcome to your playground")
//}
//
//printPersonalGreeting(to: "Matt")

// A function for division
//
//func divisionDescriptionFor(numerator: Double, denominator: Double) {
//    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)")
//}
//divisionDescriptionFor(numerator: 9.0, denominator: 3.0)

// Default parameter values - Adding a default parameter value
//func divisionDescriptionFor(numerator: Double, denominator: Double, withPunctuation punctuation: String =  ".") {
//    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)")
//}
//divisionDescriptionFor(numerator: 9.0, denominator: 3.0)
//divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!")

// Returning from a function - Returning a string
func divisionDescriptionFor(numerator: Double, denominator: Double, withPunctuation punctuation: String = ".") -> String {
    return "\(numerator) divided by \(denominator) equals \(numerator / denominator)"
}
print(divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!"))

// Variadic Parameters - Greeting a group

func printPersonalGreetings(to names: String...) {
    for name in names {
        print("Hello \(name), welcome to the playground")
    }
}

printPersonalGreetings(to: "Alex", "Chris", "Drew", "Pat")


// In-Out parameters - An in-out parameter
var error = "The request failed:"
func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
    if code == 400 {
        errorString += " bad request."
    }
}
appendErrorCode(400, toErrorString: &error)
error


// Nested Functions and Scope - nested functions

func areaOfTriangleWith(base: Double, height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}

areaOfTriangleWith(base: 3.0, height: 5.0)

// Multiple Returns - Sorting Evens and Odds
func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}

// Calling sortedEvenOddNumbers(_:)
let aBunchOfNumbers = [10, 1, 4, 3, 57, 43, 84, 27, 156, 111]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)")

// Optional Return Types
func grabMiddleName(fromFullName name: (String, String?, String)) -> String? {
    return name.1
}

let middleName = grabMiddleName(fromFullName: ("Matt", nil, "Mathais"))
if let theName = middleName {
    print(theName)
}

// Exiting Early from a Function 

func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)) {
    
    guard let middleName = name.middle, (name.middle?.characters.count)! < 4 else {
        print("Hey There")
        return
    }
    print("Hey \(middleName)")
}
greetByMiddleName(fromFullName: ("Matt", "Danger", "Mathais"))

// Function Types - ([Int]) -> ([Int], [Int])
let evenOddFunction: ([Int]) -> ([Int], [Int]) = sortedEvenOddNumbers
evenOddFunction([1, 2, 3, 4, 5, 6])

// Silver challenge

let theGroceries = ["green beans", "milk", "black beans", "pinto beans", "apples"]

func siftBeans(fromGrocerList groceries: [String]) -> (beans: [String], otherGroceries: [String]) {
    var beans = [String]()
    var otherGroceries = [String]()
    for item in groceries {
        if item.lowercased().contains("beans") {
            beans.append(item)
        } else {
            otherGroceries.append(item)
        }
    }
    return (beans, otherGroceries)
}

siftBeans(fromGrocerList: theGroceries)

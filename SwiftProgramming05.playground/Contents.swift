//: Playground - noun: a place where people can play

import Cocoa

var statusCode: Int = 418
var errorString: String = "The request failed with the error:"
switch statusCode {
    
    
// Switch cases can have single values, multiple values or ranges of values
case 100, 101:
//    errorString += " Informational, 1xx."
    errorString += " Informational, \(statusCode)"
    
case 204:
    errorString += " Successful but no content, 204."
    
case 300...307:
//    errorString += " Redirection, 3xx."
    errorString += " Redirection, \(statusCode)"
    
case 400...417:
//    errorString += " Client error, 4xx."
    errorString += " Client error, \(statusCode)"
    
case 500...505:
//    errorString += " Server error, 5xx."
    errorString += " Server error, \(statusCode)"
    
// Using where to create a filter
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error code."

default:
    errorString = "\(statusCode) is not a known error code."
}

// Creating a tuple 

//let error = (statusCode, errorString)

// Accessing the elements of a tuple 
//error.0
//error.1

// Name the tuple's elements
let error = (code: statusCode, error: errorString)
error.code
error.error

// Pattern matching in tuples

let firstErrorCode = 403
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case (404, 404):
    print("Not items found.")
case (404, _):
    print("First item not found")
case (_, 404):
    print("Second item not found")
default:
    print("All itmes found.")
}

// Single-case switch
let age = 25
//switch age {
//case 18...35:
//    print("Cool demographic")
//default:
//    break
//}

// if - case

if case 18...35 = age {
    print("In cool demographic and of drinking ages")
}
















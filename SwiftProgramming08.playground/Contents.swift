//: Playground - noun: a place where people can play

import Cocoa

// Declaring an Optional type
var errorCodeString: String?
errorCodeString = "404"
var errorDescription: String?

if let theError = errorCodeString, let errorCodeInteger = Int(theError), errorCodeInteger == 404 {
    
    errorDescription = "\(errorCodeInteger + 200): resource was not found."
   
}

var upCaseErrorDescription = errorDescription?.uppercased()

upCaseErrorDescription?.append(" PLEASE TRY AGAIN")
upCaseErrorDescription

//let description: String
//if let errorDescription = errorDescription {
//    description = errorDescription
//} else {
//    description = "No error"
//}

errorDescription = nil
let description = errorDescription ?? "No Error"
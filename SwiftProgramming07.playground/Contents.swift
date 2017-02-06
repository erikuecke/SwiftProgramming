//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

let playground = "Hello, playground"
var mutablePlayground = "Hellow, mutable playground"
mutablePlayground += "!"

for c: Character in mutablePlayground.characters {
    print("'\(c)'")
}

let oneCoolDude = "\u{1F60E}"

let aAcute = "\u{0061}\u{0301}"

for scaler in playground.unicodeScalars {
    print("\(scaler.value)")
}

let aAcutePrecomposed = "\u{00E1}"

let be = (aAcute == aAcutePrecomposed)

// Counting characters

print("aAcute: \(aAcute.characters.count); aAcutePrecomposed: \(aAcutePrecomposed.characters.count)")

let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end]

print(playground)
let range = start...end
let firstFive = playground[range]
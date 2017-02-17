//: Playground - noun: a place where people can play

import Cocoa

// VALUE VS REFERENCE TYPES

var str = "Hello, playground"

var playgroundGreeting = str

// Updating playgroundGreeting
playgroundGreeting += "! How are you today?"
str

// Adding a greek God Class
class GreekGod {
    var name: String
    init(name: String) {
        self.name = name
    }
}

// Making a Greek God
let hecate = GreekGod(name: "Hecate")

// Getting a reference to a Greek god
let anotherHecate = hecate

// Changing a Greek god's name
anotherHecate.name = "AnotherHecate"
anotherHecate.name
hecate.name

// Making the Greek Pantheon

struct Pantheon {
    var chiefGod: GreekGod
}

// Hecate's pantheon
let pantheon = Pantheon(chiefGod: hecate)

// A new chief god
let zeus = GreekGod(name: "Zeus")

// Changin Zeus's name
zeus.name = "Zeus Jr."
zeus.name

// The Romans are coming
pantheon.chiefGod.name // "AnotherHecate"
let greekPatheon = pantheon
hecate.name = "Trivia"
greekPatheon.chiefGod.name

// Adding some gods
let athena = GreekGod(name: "Athena")

let gods = [athena, hecate, zeus]

// Copying gods
let godsCopy = gods
gods.last?.name = "Jupiter"
gods
godsCopy

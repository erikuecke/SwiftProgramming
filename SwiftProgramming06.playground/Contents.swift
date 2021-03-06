//: Playground - noun: a place where people can play

import Cocoa

var myFirstInt: Int = 0


// A for-in loop
for i in 1...5 {
    myFirstInt += 1
    myFirstInt
//    print(myFirstInt)
print("myFirst equals \(myFirstInt) at iteration \(i)")
}

// Replacing i with _
for _ in 1...5 {
    myFirstInt += 1
    myFirstInt
        print(myFirstInt)
    
}

// a for-in loop with a where clause
for i in 1...100 where i % 3 == 0 {
    print(i)
}

// A while loop
var i = 1
while i < 6 {
    myFirstInt += 1
    print(myFirstInt)
    i += 1
}

// Control Transfer statments, redux
// Using Continue
var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0
while shields > 0 {

    if spaceDemonsDestroyed == 500 {
        print("You beat the game!")
        break
    }

    if blastersOverheating {
        print("Blasters are overheated! Cooldown initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blastersOverheating = false
        blasterFireCount = 0
        
    }
    
    if blasterFireCount > 100 {
        blastersOverheating = true
        continue
    }
    
    // Fire blasters!
    print("Fire blasters")
    blasterFireCount += 1
    spaceDemonsDestroyed += 1
}












//: Playground - noun: a place where people can play

import Cocoa



var bucketList = ["Climb Mount Everest"]
//bucketList.append("Fly hot air balloon to Fiji")
//bucketList.append("Watch the Lord of the Rings Trilogy in one day")
//bucketList.append("Go on a walkabout")
//bucketList.append("Go on a walkabout")
//bucketList.append("Scuba dive in the Great Blue hole")
//bucketList.append("Find a triple rainbow")


var newItems = [
    "Fly hot air ballon to Fiji",
    "Watch the Lord of the Rings trilogy in one day",
    "Go on a walkabout",
    "Scuba dive in the Great Blue Hole",
    "Find a triple rainbow"
]

//for item in newItems {
//    bucketList.append(item)
//}

bucketList += newItems
bucketList

bucketList.remove(at: 2)

print(bucketList.count)
print(bucketList[0...2])

bucketList[2] += " in Australia"
bucketList[0] = "Climb Mt. Kilimanjaro"
bucketList.insert("Toboggan across Alaska", at: 2)
bucketList

var myronsList = [
    "Climb Mt. Kilimanjaro",
    "Fly hot air ballon to Fiji",
    "Toboggan across Alaska",
    "Go on walkabout in Australia",
    "Scuba dive in the Great Blue Hole",
    "Find a triple rainbow"
]

let equal = (bucketList == myronsList)

let lunches = [
    "Cheeseburger",
    "Veggie Pizza",
    "Chicken Caesar Salad",
    "Black Bean Burrito",
    "Falafel Wrap"
]

var toDoList = ["Take out garbage", "Pay bills", "Cross off finished items"]

var hasGargabe = toDoList.contains("Take out garbage")
for statement in toDoList.reversed() {
    print(statement)
}

let originateFrom = bucketList.index(of: "Fly hot air ballon to Fiji")
let twoOverTo = bucketList[originateFrom! + 2]



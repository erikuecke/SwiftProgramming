//: Playground - noun: a place where people can play

import Cocoa

// Creating a dictionary

var movieRatings = ["Donnie Darko": 4, "Chunking Express": 5, "Dark City": 4]

// Accessing and modifying a Dictionary

// Using Count

print("I have rated \(movieRatings.count) movies.")

// Reading a value from the dictionary

let darkoRating = movieRatings["Donnie Darko"]

// Modifying a value

movieRatings["Dark City"] = 5
movieRatings

// Updating value
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, let currentRating = movieRatings["Donnie Darko"] {
    print("Old rating : \(lastRating); current rating: \(currentRating)")
}

// Adding and Removing Values
movieRatings["The Cabinet of Dr. Caligari"] = 5

// Removing a value
movieRatings.removeValue(forKey: "Dark City")

// Seting the keys value to nil
movieRatings["Dark City"] = nil

// Loopioong
for (key, value) in movieRatings {
    print("The move \(key) was rated \(value).")
}

// Just the keys please

for movie in movieRatings.keys {
    print("User has rated \(movie).")
}

// Translating a Dictionary to an array

let watchedMovies = Array(movieRatings.keys)

var georgiaZips = ["Marietta": [30006, 30007, 30008], "Alpharetta": [30004, 30005], "Covington": [30014, 30015, 30016]]























//: Playground - noun: a place where people can play

import Cocoa

// PROTOCOL EXTENTSIONS

// The Exercise protocol

protocol Exercise: CustomStringConvertible {
    var name: String { get }
    var caloriesBurned: Double { get }
    var minutes: Double { get }
}

// Adding a default implementation of description to Exercises
extension Exercise {
    var description: String {
        return "Exercise(\(name), burned \(caloriesBurned) calories in \(minutes) minutes)"
    }
}


// EllipticalWorkout and TreadmillWorkout exercises
struct EllipticalWorkout: Exercise {
    let name = "Elliptical Workout"
    let title = "Workout using the Go Fast Elliptical Trainer 3000"
    let caloriesBurned: Double
    let minutes: Double
}

let ellipticalWorkout = EllipticalWorkout(caloriesBurned: 335, minutes: 30)

struct TreadMillWorkout: Exercise {
    let name = "Treadmill Workout"
    let caloriesBurned: Double
    let minutes: Double
    let laps: Double
}

// Overriding a protocol's default implementation
extension TreadMillWorkout {
    var description: String {
        return "Treadmillwork(\(caloriesBurned) calories and \(laps) laps in \(minutes) minutes)"
    }
}

let runningWorkout = TreadMillWorkout(caloriesBurned: 350, minutes: 25, laps: 10.5)

//// Computing calories burned per minute, generically
//func caloriesBurnedPerMinute<E: Exercise>(for exercise: E) -> Double {
//    return exercise.caloriesBurned / exercise.minutes
//}

extension Exercise {
    var caloriesBurnedPerMinute: Double {
        return caloriesBurned / minutes
    }
}

// Accessing caloriesBurnedPerMinute
print(ellipticalWorkout.caloriesBurnedPerMinute)
print(runningWorkout.caloriesBurnedPerMinute)

// Seeing the default description implementation
//print(ellipticalWorkout)
//print(runningWorkout)


//print(caloriesBurnedPerMinute(for: ellipticalWorkout))
//print(caloriesBurnedPerMinute(for: runningWorkout))

// Protocol Extension where Clauses
// Extending Sequences containing Exercises
extension Sequence where Iterator.Element == Exercise {
    func totalCaloriesBurned() -> Double {
        var total: Double = 0
        for exercise in self {
            total += exercise.caloriesBurned
        }
        return total
    }
}

// Calling totalCaloriesBurned() on an array of Exercises
let mondayWorkout: [Exercise] = [ellipticalWorkout, runningWorkout]
print(mondayWorkout.totalCaloriesBurned())

// NAMEING THINGS: A Cautionary Tale
// Extending Exercise to add a title
extension Exercise {
    var title: String {
        return "\(name) - \(minutes) minutes"
    }
}

for exercise in mondayWorkout {
    print(exercise.title)
}

print(ellipticalWorkout.title)


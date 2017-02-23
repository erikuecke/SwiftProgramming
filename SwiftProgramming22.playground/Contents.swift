//: Playground - noun: a place where people can play

import Cocoa





// Generics
// Setting up a Stack

struct Stack<Element>: Sequence {
    var items = [Element]()
    
    mutating func push(_ newItem: Element) {
        items.append(newItem)
    }
        
    mutating func pop() -> Element? {
        guard !items.isEmpty else {
            return nil
        }
        return items.removeLast()
    }
    
    // Mapping a stack
    func map<U>(_ f: (Element) -> U) -> Stack<U> {
        var mappedItems = [U]()
        for item in items {
            mappedItems.append(f(item))
        }
        return Stack<U>(items: mappedItems)
    }
    
    func makeIterator() -> StackIterator<Element> {
        return StackIterator(stack: self)
    }
    
    // Pushing items from an array onto a stack
    mutating func pushAll<S: Sequence>(_ sequence: S) where S.Iterator.Element == Element {
        for item in sequence {
            self.push(item)
        }
    }
}




// Creating an instance of STack
var intStack = Stack<Int>()
intStack.push(1)
intStack.push(2)
var doubleStack = intStack.map { 2 * $0 }

print(intStack.pop()) // Prints Optional
print(intStack.pop()) // 
print(intStack.pop())

print(doubleStack.pop())
print(doubleStack.pop())


// Creating a Stack of Strings
var stringStack = Stack<String>()
stringStack.push("this is a string")
stringStack.push("another string")

print(stringStack.pop())

// Generic Functions and Methods
// Your own map function
func myMap<T, U>(_ items: [T], _ f: (T) -> (U)) -> [U] {
    var result = [U]()
    for item in items {
        result.append(f(item))
    }
    return result
}

// Mapping arrays
let strings = ["one", "two", "three"]
let stringsLengths = myMap(strings) { $0.characters.count }
print(stringsLengths)


// Type Constraints
// Using a type constarint to allow checking for equality
func checkIfEqual<T: Equatable>(_ first: T, _ second: T) -> Bool {
    return first == second
}

print(checkIfEqual(1, 1))
print(checkIfEqual("a string", "a string"))
print(checkIfEqual("a string", "a differenct string"))

// Using a type constraint to check CustomSTringConvertible values
func checkIfDescriptionsMatch<T: CustomStringConvertible, U: CustomStringConvertible>(_ first: T, _ second: U) -> Bool {
    return first.description == second.description
}

print(checkIfDescriptionsMatch(Int(1), UInt(1)))
print(checkIfDescriptionsMatch(1, 1.0))
print(checkIfDescriptionsMatch(Float(1.0), Double(1.0)))



// Assocated Type Protocols
// Creating StackIerator
struct StackIterator<T>: IteratorProtocol {
    
    
    var stack: Stack<T>
    
    mutating func next() -> T? {
        return stack.pop()
    }
}

// Using StackIterator
var myStack = Stack<Int>()
myStack.push(10)
myStack.push(20)
myStack.push(30)

var myStackIterator = StackIterator(stack: myStack)
while let value = myStackIterator.next() {
    print("got \(value)")
}

for value in myStack {
    print("for-in loop: got \(value)")
}

myStack.pushAll([1, 2, 3])
for value in myStack {
    print("after pushing: got \(value)")
}


// PUshing items to the stack
var myOtherStack = Stack<Int>()
myOtherStack.pushAll([1, 2, 3])
myStack.pushAll(myOtherStack)
for value in myStack {
    print("after pushing items onto stack, go \(valu)")
}













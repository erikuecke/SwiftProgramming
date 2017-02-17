//: Playground - noun: a place where people can play

import Cocoa

// Implimenting IntArrayBuffer

fileprivate class IntArrayBuffer {
    var storage: [Int]
    
    init() {
        storage = []
    }
    
    init(buffer: IntArrayBuffer) {
        storage = buffer.storage
    }
}

// Initial implementation of IntArray
struct IntArray {
    private var buffer: IntArrayBuffer
    
    init() {
        buffer = IntArrayBuffer()
    }
    
    func describe() {
        print(buffer.storage)
    }
    
    // Addin COW to IntArray
    private mutating func copyIfNeeded() {
        if !isKnownUniquelyReferenced(&buffer) {
            print("Making a copy of \(buffer.storage)")
            buffer = IntArrayBuffer(buffer: buffer)
        }
    }
    
    // Defining IntArray's API
    mutating func insert(_ value: Int, at index: Int) {
        copyIfNeeded()
        buffer.storage.insert(value, at: index)
    }
    
    mutating func append(_ value: Int) {
        copyIfNeeded()
        buffer.storage.append(value)
    }
    
    mutating func remove(at index: Int) {
        copyIfNeeded()
        buffer.storage.remove(at: index)
    }
}

// Exercising IntArray

var integers = IntArray()
integers.append(1)
integers.append(2)
integers.append(4)
integers.describe()

// Making a copy of IntArray
print("copying integers to ints")
var ints = integers
print("inserting into ints")
ints.insert(3, at: 2)
integers.describe()
ints.describe()

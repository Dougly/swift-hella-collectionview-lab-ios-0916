//: Playground - noun: a place where people can play

import UIKit

func createFibonacciArray () -> [Int] {
    var arrayOfNumbers: [Int] = [1,1]
    
    while arrayOfNumbers[arrayOfNumbers.count - 1] < 1000 {
        arrayOfNumbers.append(arrayOfNumbers[arrayOfNumbers.count - 1] + arrayOfNumbers[arrayOfNumbers.count - 2])
    }
    
    return arrayOfNumbers
}

let sequence = createFibonacciArray()

print (sequence)

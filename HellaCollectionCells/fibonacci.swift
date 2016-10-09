//
//  fibnnaci.swift
//  HellaCollectionCells
//
//  Created by Douglas Galante on 10/9/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

func createFibonacciArray () -> [Int] {
    var arrayOfNumbers: [Int] = [1,1]
    
    while arrayOfNumbers[arrayOfNumbers.count - 1] < 1000 {
        arrayOfNumbers.append(arrayOfNumbers[arrayOfNumbers.count - 1] + arrayOfNumbers[arrayOfNumbers.count - 2])
    }
    
    return arrayOfNumbers
}

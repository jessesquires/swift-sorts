//
//  Jesse Squires
//  http://www.hexedbits.com
//
//  GitHub
//  https://github.com/jessesquires/swift-sorts
//
//  Copyright (c) 2014 Jesse Squires
//

import Foundation

let MAX_COUNT = 1000

var unsortedArray : Int[] = randomNumbersArray(MAX_COUNT)

println("Initial array sorted? \(arrayIsSorted(unsortedArray))")

sortArray(unsortedArray, "Selection Sort", selectionSort)

sortArray(unsortedArray, "Insertion Sort", insertionSort)
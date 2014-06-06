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

let MAX_COUNT = 10000

var unsortedArray : Int[] = randomNumbersArray(MAX_COUNT)

println("Initial array sorted? \(arrayIsSorted(unsortedArray))")

sortArray(unsortedArray, "Selection Sort", selectionSort)

sortArray(unsortedArray, "Insertion Sort", insertionSort)

sortArray(unsortedArray, "Quick Sort", quickSort, 0, unsortedArray.count - 1)


var sortName = "Swift Sort"
var arrCopy : Int[] = unsortedArray.copy()
var startTime: NSDate = NSDate()

arrCopy.sort({ $0 < $1 })

var totalTime: NSTimeInterval = startTime.timeIntervalSinceNow * -1
var isSorted: Bool = arrayIsSorted(arrCopy)

if isSorted {
    println("\(sortName) finished in \(totalTime) sec\n")
}
else {
    println("** \(sortName) failed! **\n")
}
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

var unsortedList: Int[] = randomNumbersArray(MAX_COUNT)
var isSorted: Bool = arrayIsSorted(unsortedList)

println("List sorted? \(isSorted)")


println("Running selection sort...")
var start: NSDate = NSDate()

selectionSort(unsortedList)

var end:NSTimeInterval = start.timeIntervalSinceNow * -1

isSorted = arrayIsSorted(unsortedList)

println("List sorted? \(isSorted) in \(end)")

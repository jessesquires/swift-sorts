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

let MAX_COUNT = 10_000

let NUM_TRIALS = 10

typealias SortFunctionClosure = (arr: Int[]) -> ()

enum SortFunctionName : String {
    case Swift = "Swift"
    case Quick = "Quick"
    case Heap = "Heap"
    case Insertion = "Insertion"
    case Selection = "Selection"
}

let sortFunctions : Dictionary<SortFunctionName, SortFunctionClosure> = [SortFunctionName.Swift : swiftSort,
                                                                         SortFunctionName.Quick : quickSort,
                                                                         SortFunctionName.Heap : heapSort,
                                                                         SortFunctionName.Insertion : insertionSort,
                                                                         SortFunctionName.Selection : selectionSort]

var averageSortTimes : Dictionary<SortFunctionName, NSTimeInterval> = [SortFunctionName.Swift : 0.0,
                                                                       SortFunctionName.Quick : 0.0,
                                                                       SortFunctionName.Heap : 0.0,
                                                                       SortFunctionName.Insertion : 0.0,
                                                                       SortFunctionName.Selection : 0.0]

for t in 1...NUM_TRIALS {
    println("::: TRIAL \(t) :::")
    var unsortedArray : Int[] = randomIntegerArray(MAX_COUNT)
    
    for (name, closure) in sortFunctions {
        let totalTime = averageSortTimes[name]!
        
        var sortTime = sortArray(anArray: unsortedArray,
                                 sortFunctionName: name,
                                 sortClosure: closure)
        
        averageSortTimes[name] = totalTime + sortTime
    }
}

println("\nFinal Results:\n--------------")

for (name, time) in averageSortTimes {
    println("\(name.toRaw()) sort average time = \(time / Double(NUM_TRIALS)) sec")
}

println()

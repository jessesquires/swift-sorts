//
//  Jesse Squires
//  http://www.jessesquires.com
//
//  GitHub
//  https://github.com/jessesquires/swift-sorts
//
//  Copyright (c) 2014 Jesse Squires
//

import Foundation

let MAX_COUNT = 1_000

let NUM_TRIALS = 10

let sortAlgorithms : Dictionary<SortAlgorithmName, SortAlgorithmClosure> = [SortAlgorithmName.Swift : swiftSort,
                                                                            SortAlgorithmName.Quick : quickSort,
                                                                            SortAlgorithmName.Heap : heapSort,
                                                                            SortAlgorithmName.Insertion : insertionSort,
                                                                            SortAlgorithmName.Selection : selectionSort]

var averageSortTimes : Dictionary<SortAlgorithmName, Double> = [SortAlgorithmName.Swift : 0.0,
                                                                SortAlgorithmName.Quick : 0.0,
                                                                SortAlgorithmName.Heap : 0.0,
                                                                SortAlgorithmName.Insertion : 0.0,
                                                                SortAlgorithmName.Selection : 0.0]

for t in 1...NUM_TRIALS {
    println("::: TRIAL \(t) :::")
    var unsortedArray : Int[] = randomIntegerArray(MAX_COUNT)
    
    for (name, closure) in sortAlgorithms {
        let totalTime = averageSortTimes[name]!
        
        var sortTime = sortArray(anArray: unsortedArray,
                                 sortName: name,
                                 sortClosure: closure)
        
        averageSortTimes[name] = totalTime + sortTime
    }
}

println("\nFinal Results:\n--------------")

for (name, time) in averageSortTimes {
    println("\(name.toRaw()) sort average time = \(time / Double(NUM_TRIALS)) sec")
}

println()

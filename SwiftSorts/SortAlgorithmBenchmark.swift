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

typealias SortAlgorithmClosure = (arr: [Int]) -> [Int]

enum SortAlgorithm : String {
    case Swift = "Swift"
    case Quick = "Quick"
    case Heap = "Heap"
    case Insertion = "Insertion"
    case Selection = "Selection"
    
    var closure: SortAlgorithmClosure {
        switch self {
        case .Swift:
            return swiftSort
            
        case .Quick:
            return quickSort
            
        case .Heap:
            return heapSort
            
        case .Insertion:
            return insertionSort
            
        case .Selection:
            return selectionSort
            }
    }
}

class SortAlgorithmBenchmark {
    
    let algorithm: SortAlgorithm
    let closure: SortAlgorithmClosure
    var sortTimes: [Double] = [Double]()
    
    init(_ algorithm: SortAlgorithm) {
        self.algorithm = algorithm
        self.closure = algorithm.closure
    }
    
    var name: String {
        return algorithm.toRaw() + " sort"
    }
    
    var description: String {
        return "\(name): average time = \(averageSortTime) sec"
    }
    
    var averageSortTime: Double {
        return reduce(sortTimes, 0.0, { $0 + $1 }) / Double(sortTimes.count)
    }
    
    func sortArray(anArray: [Int]) -> Double {
        println("Running \(name)...")
        
        var startTime = NSDate()
        
        let sortedArray = algorithm.closure(arr: anArray)
        
        var totalTime = startTime.timeIntervalSinceNow * -1
        
        assert(arrayIsSorted(sortedArray), "** Failed to sort! **")
        
        println("\(name) finished in \(totalTime) sec\n")
        
        sortTimes.append(totalTime)
        
        return totalTime
    }
}

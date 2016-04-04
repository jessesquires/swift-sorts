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
        return algorithm.rawValue + " sort"
    }
    
    var description: String {
        let avgTime = String(format: "%.6lf", averageSortTime())
        let stdDev = String(format: "%.6lf", standardDeviation())
        return "\(name): " + avgTime + " s (± " + stdDev + ")"
    }
    
    func sortArray(anArray: [Int]) -> Double {
        print("Running \(name)...")
        
        let startTime = NSDate()
        
        let sortedArray = algorithm.closure(arr: anArray)
        
        let totalTime = startTime.timeIntervalSinceNow * -1
        
        assert(arrayIsSorted(sortedArray), "** Failed to sort! **")
        
        print("\(name) finished in \(totalTime) sec\n")
        
        sortTimes.append(totalTime)
        
        return totalTime
    }
    
    func averageSortTime() -> Double {
        return sortTimes.reduce(0.0, combine: { $0 + $1 }) / Double(sortTimes.count)
    }
    
    func standardDeviation() -> Double {
        let avg = averageSortTime()
        
        let variance = sortTimes.map({ pow($0 - avg, 2.0) })
        
        let sum = variance.reduce(0.0, combine: { $0 + $1 })
        
        let mean = sum / Double(variance.count)
        
        return sqrt(mean)
    }
}

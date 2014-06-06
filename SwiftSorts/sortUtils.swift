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

func randomNumbersArray(count: Int) -> Int[]
{
    println("Generating array of \(count) random integers [0, \(UINT32_MAX))...")
    
    var arr: Int[] = Array()
    for _ in 0..count {
        var number = Int(arc4random_uniform(UINT32_MAX))
        arr.append(number)
    }
    return arr
}

func arrayIsSorted(arr: Int[]) -> Bool
{
    for i in 0..arr.count-1 {
        var a = arr[i]
        var b = arr[i + 1]
        if a > b {
            return false
        }
    }
    return true;
}

func sortArray(arr: Int[], sortName: String, sortClosure:(arr: Int[]) -> (Void)) -> Bool
{
    var arrCopy: Int[] = arr.copy()
    
    if arrayIsSorted(arrCopy) {
        println("Already sorted!")
    }
    
    println("Running \(sortName)...")
    
    var startTime: NSDate = NSDate()
    
    sortClosure(arr: arrCopy)
    
    var totalTime: NSTimeInterval = startTime.timeIntervalSinceNow * -1
    var isSorted: Bool = arrayIsSorted(arrCopy)
    
    if isSorted {
        println("\(sortName) finished in \(totalTime) sec\n")
    }
    else {
        println("\(sortName) FAILED!\n")
    }
    
    return isSorted
}

func sortArray(arr: Int[], sortName: String, sortClosure:(arr: Int[], left: Int, right: Int) -> (Void)) -> Bool
{
    var arrCopy: Int[] = arr.copy()
    
    if arrayIsSorted(arrCopy) {
        println("Already sorted!")
    }
    
    println("Running \(sortName)...")
    
    var startTime: NSDate = NSDate()
    
    sortClosure(arr: arrCopy, left: 0, right: arrCopy.count - 1)
    
    var totalTime: NSTimeInterval = startTime.timeIntervalSinceNow * -1
    var isSorted: Bool = arrayIsSorted(arrCopy)
    
    if isSorted {
        println("\(sortName) finished in \(totalTime) sec\n")
    }
    else {
        println("\(sortName) FAILED!\n")
    }
    
    return isSorted
}

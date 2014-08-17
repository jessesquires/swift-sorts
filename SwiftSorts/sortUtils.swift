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

func randomIntegerArray(count: Int) -> [Int]
{
    println("Generating array of \(count) random integers in range: [0, \(UINT32_MAX))...")
    
    var arr: [Int] = Array()
    for _ in 0..<count {
        var number = Int(arc4random_uniform(UINT32_MAX))
        arr.append(number)
    }
    
    assert(!arrayIsSorted(arr), "** Randomly generated array is already sorted! **")
    return arr
}

func arrayIsSorted(arr: [Int]) -> Bool
{
    for i in 0..<arr.count-1 {
        var a = arr[i]
        var b = arr[i + 1]
        if a > b {
            return false
        }
    }
    return true;
}

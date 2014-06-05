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
    println("Generating list of random integers...")
    
    var arr: Int[] = Array()
    for _ in 0..count {
        var number = Int(arc4random_uniform(UINT32_MAX))
        arr.append(number)
    }
    return arr
}

func arrayIsSorted(arr :Int[]) -> Bool
{
    println("Verifying list is sorted...")
    
    for i in 0..arr.count-1 {
        var a = arr[i]
        var b = arr[i + 1]
        if a > b {
            return false
        }
    }
    return true;
}

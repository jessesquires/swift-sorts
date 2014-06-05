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

func selectionSort(var arr: Int[])
{
    var minIndex = 0
    
    for i in 0..arr.count {
        minIndex = i
        
        for j in (i + 1)..arr.count {
            if arr[j] < arr[minIndex] {
                minIndex = j
            }
        }
        
        if (minIndex != i) {
            arr[i] = arr[i] ^ arr[minIndex]
            arr[minIndex] = arr[i] ^ arr[minIndex]
            arr[i] = arr[i] ^ arr[minIndex]
        }
    }
}
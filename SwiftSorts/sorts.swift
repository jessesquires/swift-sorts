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

func swap(inout a: Int, inout b: Int)
{
    a = a ^ b
    b = a ^ b
    a = a ^ b
}

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
            swap(&arr[i], &arr[minIndex])
        }
    }
}

func insertionSort(var arr: Int[])
{
    for i in 1..arr.count {
        var j = i
        var target = arr[i]
        
        while j > 0 && target < arr[j - 1] {
            swap(&arr[j], &arr[j - 1])
            j--
        }
        arr[j] = target
    }
}
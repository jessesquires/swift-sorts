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

func selectionSort(var list :Int[])
{
    var minIndex = 0
    
    for i in 0..list.count {
        minIndex = i
        
        for j in (i + 1)..list.count {
            if list[j] < list[minIndex] {
                minIndex = j
            }
        }
        
        if (minIndex != i) {
            list[i] = list[i] ^ list[minIndex]
            list[minIndex] = list[i] ^ list[minIndex]
            list[i] = list[i] ^ list[minIndex]
        }
    }
}
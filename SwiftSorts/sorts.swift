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

func swiftSort(arr: [Int]) -> [Int]
{
    return arr.sorted({ $0 < $1 })
}

func selectionSort(arr: [Int]) -> [Int]
{
    var minIndex = 0
    var array = arr
    
    for i in 0..<arr.count {
        minIndex = i
        
        for j in (i + 1)..<arr.count {
            if array[j] < array[minIndex] {
                minIndex = j
            }
        }
        
        if (minIndex != i) {
            swap(&array[i], &array[minIndex])
        }
    }
    
    return array
}

func insertionSort(arr: [Int]) -> [Int]
{
    var array = arr
    
    for i in 1..<arr.count {
        var j = i
        var target = array[i]
        
        while j > 0 && target < array[j - 1] {
            swap(&array[j], &array[j - 1])
            j--
        }
        array[j] = target
    }
    
    return array
}

func quickSort(arr: [Int]) -> [Int]
{
    return quickSort(arr, 0, arr.count - 1)
}

func quickSort(arr: [Int], left: Int, right: Int) -> [Int]
{
    var array = arr
    var index = partition(&array, left, right)
    
    if left < index - 1 {
        array = quickSort(array, left, index - 1)
    }
    
    if index < right {
        array = quickSort(array, index, right)
    }
    
    return array
}

func partition(inout arr: [Int], left: Int, right: Int) -> Int
{
    var i = left
    var j = right
    var pivot = arr[(left + right) / 2]
    
    while i <= j {
        while arr[i] < pivot {
            i++
        }
        
        while j > 0 && arr[j] > pivot {
            j--
        }
        
        if i <= j {
            swap(&arr[i], &arr[j])
            i++
            
            if j > 0 {
                j--
            }
        }
    }
    return i
}

func heapSort(arr: [Int]) -> [Int]
{
    var array = heapify(arr, arr.count)
    
    var end = arr.count - 1
    
    while end > 0 {
        swap(&array[end], &array[0])
        array = siftDown(array, 0, end - 1)
        end--
    }
    
    return array
}

func heapify(arr: [Int], count: Int) -> [Int]
{
    var start = (count - 2) / 2
    
    var array = arr
    while start >= 0 {
        array = siftDown(array, start, count - 1)
        start--
    }
    
    return array
}

func siftDown(arr: [Int], start: Int, end: Int) -> [Int]
{
    var root = start
    var array = arr
    
    while root * 2 + 1 <= end {
        var child = root * 2 + 1
        
        if child + 1 <= end && array[child] < array[child + 1] {
            child++
        }
        
        if array[root] < array[child] {
            swap(&array[root], &array[child])
            root = child
        }
        else {
            return array
        }
    }
    
    return array
}

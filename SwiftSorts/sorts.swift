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

func quickSort(arr: Int[], left: Int, right: Int)
{
    var index = partition(arr, left, right)
    
    if left < index - 1 {
        quickSort(arr, left, index - 1)
    }
    
    if index < right {
        quickSort(arr, index, right)
    }
}

func partition(arr: Int[], left: Int, right: Int) -> Int
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

func heapSort(arr: Int[])
{
    heapify(arr, arr.count)
    
    var end = arr.count - 1
    
    while end > 0 {
        swap(&arr[end], &arr[0])
        siftDown(arr, 0, end - 1)
        end--
    }
}

func heapify(arr: Int[], count: Int)
{
    var start = (count - 2) / 2
    
    while start >= 0 {
        siftDown(arr, start, count - 1)
        start--
    }
}

func siftDown(arr: Int[], start: Int, end: Int)
{
    var root = start
    
    while root * 2 + 1 <= end {
        var child = root * 2 + 1
        
        if child + 1 <= end && arr[child] < arr[child + 1] {
            child++
        }
        
        if arr[root] < arr[child] {
            swap(&arr[root], &arr[child])
            root = child
        }
        else {
            return;
        }
    }
}

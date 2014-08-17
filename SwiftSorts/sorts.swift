//
//  Jesse Squires
//  http://www.jessesquires.com
//
//  GitHub
//  https://github.com/jessesquires/swift-sorts
//
//  Copyright (c) 2014 Jesse Squires
//

func swiftSort(var arr: [Int]) -> [Int]
{
    return sorted(arr);
}

func selectionSort(var arr: [Int]) -> [Int]
{
    var minIndex = 0
    
    for i in 0..<arr.count {
        minIndex = i
        
        for j in (i + 1)..<arr.count {
            if arr[j] < arr[minIndex] {
                minIndex = j
            }
        }
        
        if (minIndex != i) {
            swap(&arr[i], &arr[minIndex])
        }
    }
    return arr;
}

func insertionSort(var arr: [Int]) -> [Int]
{
    for i in 1..<arr.count {
        var j = i
        var target = arr[i]
        
        while j > 0 && target < arr[j - 1] {
            swap(&arr[j], &arr[j - 1])
            j--
        }
        arr[j] = target
    }
    
    return arr;
}

func quickSort(var arr: [Int]) -> [Int]
{
    quickSort(&arr, 0, arr.count - 1)
    return arr;
}

func quickSort(inout arr: [Int], left: Int, right: Int)
{
    var index = partition(&arr, left, right)
    
    if left < index - 1 {
        quickSort(&arr, left, index - 1)
    }
    
    if index < right {
        quickSort(&arr, index, right)
    }
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

func heapSort(var arr: [Int]) -> [Int]
{
    heapify(&arr, arr.count)
    
    var end = arr.count - 1
    
    while end > 0 {
        swap(&arr[end], &arr[0])
        siftDown(&arr, 0, end - 1)
        end--
    }
    
    return arr;
}

func heapify(inout arr: [Int], count: Int)
{
    var start = (count - 2) / 2
    
    while start >= 0 {
        siftDown(&arr, start, count - 1)
        start--
    }
}

func siftDown(inout arr: [Int], start: Int, end: Int)
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
            return
        }
    }
}

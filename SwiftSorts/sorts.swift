//
//  Jesse Squires
//  http://www.jessesquires.com
//
//  GitHub
//  https://github.com/jessesquires/swift-sorts
//
//  Copyright (c) 2014 Jesse Squires
//

func swiftSort(arr: [Int]) -> [Int]
{
    return arr.sort();
}

func selectionSort(array: [Int]) -> [Int]
{
	var arr = array
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

func insertionSort(array: [Int]) -> [Int]
{
	var arr = array
    for i in 1..<arr.count {
        var j = i
        let target = arr[i]
        
        while j > 0 && target < arr[j - 1] {
            swap(&arr[j], &arr[j - 1])
            j -= 1
        }
        arr[j] = target
    }
    
    return arr;
}

func quickSort(array: [Int]) -> [Int]
{
	var arr = array
    quickSort(&arr, left: 0, right: arr.count - 1)
    return arr;
}

func quickSort(inout arr: [Int], left: Int, right: Int)
{
    let index = partition(&arr, left: left, right: right)
    
    if left < index - 1 {
        quickSort(&arr, left: left, right: index - 1)
    }
    
    if index < right {
        quickSort(&arr, left: index, right: right)
    }
}

func partition(inout arr: [Int], left: Int, right: Int) -> Int
{
    var i = left
    var j = right
    let pivot = arr[(left + right) / 2]
    
    while i <= j {
        while arr[i] < pivot {
            i += 1
        }
        
        while j > 0 && arr[j] > pivot {
            j -= 1
        }
        
        if i <= j {
            if i != j {
                swap(&arr[i], &arr[j])
            }
            i += 1
            
            if j > 0 {
                j -= 1
            }
        }
    }
    return i
}

func heapSort(array: [Int]) -> [Int]
{
	var arr = array
    heapify(&arr, count: arr.count)
    
    var end = arr.count - 1
    
    while end > 0 {
        swap(&arr[end], &arr[0])
        siftDown(&arr, start: 0, end: end - 1)
        end -= 1
    }
    
    return arr;
}

func heapify(inout arr: [Int], count: Int)
{
    var start = (count - 2) / 2
    
    while start >= 0 {
        siftDown(&arr, start: start, end: count - 1)
        start -= 1
    }
}

func siftDown(inout arr: [Int], start: Int, end: Int)
{
    var root = start
    
    while root * 2 + 1 <= end {
        var child = root * 2 + 1
        
        if child + 1 <= end && arr[child] < arr[child + 1] {
            child += 1
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

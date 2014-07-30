//
//  Jesse Squires
//  http://www.jessesquires.com
//
//  GitHub
//  https://github.com/jessesquires/swift-sorts
//
//  Copyright (c) 2014 Jesse Squires
//

import XCTest

class SwiftSortsPerformanceTests: XCTestCase {
    
    let maxCount = 1_000
    var randomArray : [Int]? = nil
    
    override func setUp() {
        super.setUp()
        self.randomArray = randomIntegerArray(self.maxCount)
    }
    
    override func tearDown() {
        self.randomArray = nil
        super.tearDown()
    }
    
    func testSwiftSortPerformance() {
        var unwrappedRandomArray: [Int] = self.randomArray!
        
        self.measureBlock() {
            swiftSort(&unwrappedRandomArray)
        }
    }
    
    func testQuickSortPerformance() {
        var unwrappedRandomArray: [Int] = self.randomArray!
        
        self.measureBlock() {
            quickSort(&unwrappedRandomArray)
        }
    }
    
    func testHeapSortPerformance() {
        var unwrappedRandomArray: [Int] = self.randomArray!
        
        self.measureBlock() {
            heapSort(&unwrappedRandomArray)
        }
    }
    
    func testInsertionSortPerformance() {
        var unwrappedRandomArray: [Int] = self.randomArray!
        
        self.measureBlock() {
            insertionSort(&unwrappedRandomArray)
        }
    }
    
    func testSelectionSortPerformance() {
        var unwrappedRandomArray: [Int] = self.randomArray!
        
        self.measureBlock() {
            selectionSort(&unwrappedRandomArray)
        }
    }
}

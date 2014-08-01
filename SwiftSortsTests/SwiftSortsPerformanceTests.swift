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
        self.measureBlock() {
            let sortedArray = swiftSort(self.randomArray!)
        }
    }
    
    func testQuickSortPerformance() {
        self.measureBlock() {
            let sortedArray = quickSort(self.randomArray!)
        }
    }
    
    func testHeapSortPerformance() {
        self.measureBlock() {
            let sortedArray = heapSort(self.randomArray!)
        }
    }
    
    func testInsertionSortPerformance() {
        self.measureBlock() {
            let sortedArray = insertionSort(self.randomArray!)
        }
    }
    
    func testSelectionSortPerformance() {
        self.measureBlock() {
            let sortedArray = selectionSort(self.randomArray!)
        }
    }
}

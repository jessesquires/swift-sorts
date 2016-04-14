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
            _ = swiftSort(self.randomArray!)
        }
    }
    
    func testQuickSortPerformance() {
        self.measureBlock() {
            _ = quickSort(self.randomArray!)
        }
    }
    
    func testHeapSortPerformance() {
        self.measureBlock() {
            _ = heapSort(self.randomArray!)
        }
    }
    
    func testInsertionSortPerformance() {
        self.measureBlock() {
            _ = insertionSort(self.randomArray!)
        }
    }
    
    func testSelectionSortPerformance() {
        self.measureBlock() {
            _ = selectionSort(self.randomArray!)
        }
    }
}

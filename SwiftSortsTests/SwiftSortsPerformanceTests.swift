//
//  Jesse Squires
//  http://www.hexedbits.com
//
//  GitHub
//  https://github.com/jessesquires/swift-sorts
//
//  Copyright (c) 2014 Jesse Squires
//

import XCTest

class SwiftSortsPerformanceTests: XCTestCase {
    
    let maxCount = 1_000
    var randomArray : Int[]? = nil
    
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
            swiftSort(self.randomArray!)
        }
    }
    
    func testQuickSortPerformance() {
        self.measureBlock() {
            quickSort(self.randomArray!)
        }
    }
    
    func testHeapSortPerformance() {
        self.measureBlock() {
            heapSort(self.randomArray!)
        }
    }
    
    func testInsertionSortPerformance() {
        self.measureBlock() {
            insertionSort(self.randomArray!)
        }
    }
    
    func testSelectionSortPerformance() {
        self.measureBlock() {
            selectionSort(self.randomArray!)
        }
    }
}

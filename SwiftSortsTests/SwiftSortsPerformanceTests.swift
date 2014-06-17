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
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSwiftSortPerformance() {
        var randomArray : Int[] = randomIntegerArray(self.maxCount)
        self.measureBlock() {
            swiftSort(randomArray)
        }
    }
    
    func testQuickSortPerformance() {
        var randomArray : Int[] = randomIntegerArray(self.maxCount)
        self.measureBlock() {
            quickSort(randomArray)
        }
    }
    
    func testHeapSortPerformance() {
        var randomArray : Int[] = randomIntegerArray(self.maxCount)
        self.measureBlock() {
            heapSort(randomArray)
        }
    }
}

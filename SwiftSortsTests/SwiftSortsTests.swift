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

class SwiftSortsTests: XCTestCase {
    
    var unsortedArray : Int[] = [23, 87, 1, 0, 34, 687, 34, 75, 10, 9324, 809, 98, 35, 4]
    
    var sortedArray : Int[] = [0, 1, 4, 10, 23, 34, 34, 35, 75, 87, 98, 687, 809, 9324]
    
    override func setUp() {
        super.setUp()
        // Put setup code here.
    }
    
    override func tearDown() {
        // Put teardown code here.
        super.tearDown()
    }
    
    func testQuickSort() {
        
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
}

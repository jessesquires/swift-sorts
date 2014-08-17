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

class SwiftSortsUtilsTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testArrayIsSortUtil() {
        var sortedArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
        XCTAssertTrue(arrayIsSorted(sortedArray), "Array should be sorted");
        
        var unsortedArray = [6, 2, 3, 9, 1, 5, 7, 10, 4, 8];
        XCTAssertFalse(arrayIsSorted(unsortedArray), "Array should not be sorted");
    }
}

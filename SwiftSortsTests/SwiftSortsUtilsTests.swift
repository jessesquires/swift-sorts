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
        let sortedArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
        XCTAssertTrue(arrayIsSorted(sortedArray), "Array should be sorted");
        
        let unsortedArray = [6, 2, 3, 9, 1, 5, 7, 10, 4, 8];
        XCTAssertFalse(arrayIsSorted(unsortedArray), "Array should not be sorted");
    }
    
    func testSortAlgorithmBenchmarkAverage() {
        let swift = SortAlgorithmBenchmark(.Swift)
        
        swift.sortTimes = [5.0, 10.0, 20.0, 30.0, 5.0]
        
        XCTAssertEqual(swift.averageSortTime(), 14)
    }
    
    func testSortAlgorithmBenchmarkStandardDeviation() {
        let swift = SortAlgorithmBenchmark(.Swift)
        
        swift.sortTimes = [5.0, 10.0, 20.0, 30.0, 5.0]
        
        XCTAssertEqualWithAccuracy(swift.standardDeviation(), 9.6953, accuracy: 0.0001)
    }
}

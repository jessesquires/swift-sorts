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

class SwiftSortsTests: XCTestCase {
    
    let sortedArray : Int[] = [0, 1, 4, 10, 23, 34, 34, 35, 75, 87, 98, 687, 809, 9324]
    var unsortedArray : Int[]? = nil
    
    override func setUp() {
        super.setUp()
        self.unsortedArray = [23, 87, 1, 0, 34, 687, 34, 75, 10, 9324, 809, 98, 35, 4]
    }
    
    override func tearDown() {
        self.unsortedArray = nil
        super.tearDown()
    }
    
    func testSwiftSort() {
        var unwrappedUnsortedArray : Int[] = self.unsortedArray!
        
        XCTAssertFalse(equal(self.sortedArray, unwrappedUnsortedArray), "Arrays should not be equal before sorting")
        swiftSort(unwrappedUnsortedArray)
        XCTAssertTrue(equal(self.sortedArray, unwrappedUnsortedArray), "Arrays should be equal after sorting")
    }
    
    func testQuickSort() {
        var unwrappedUnsortedArray : Int[] = self.unsortedArray!
        
        XCTAssertFalse(equal(self.sortedArray, unwrappedUnsortedArray), "Arrays should not be equal before sorting")
        quickSort(unwrappedUnsortedArray)
        XCTAssertTrue(equal(self.sortedArray, unwrappedUnsortedArray), "Arrays should be equal after sorting")
    }

    func testHeapSort() {
        var unwrappedUnsortedArray : Int[] = self.unsortedArray!
        
        XCTAssertFalse(equal(self.sortedArray, unwrappedUnsortedArray), "Arrays should not be equal before sorting")
        heapSort(unwrappedUnsortedArray)
        XCTAssertTrue(equal(self.sortedArray, unwrappedUnsortedArray), "Arrays should be equal after sorting")
    }
    
    func testInsertionSort() {
        var unwrappedUnsortedArray : Int[] = self.unsortedArray!
        
        XCTAssertFalse(equal(self.sortedArray, unwrappedUnsortedArray), "Arrays should not be equal before sorting")
        insertionSort(unwrappedUnsortedArray)
        XCTAssertTrue(equal(self.sortedArray, unwrappedUnsortedArray), "Arrays should be equal after sorting")
    }
    
    func testSelectionSort() {
        var unwrappedUnsortedArray : Int[] = self.unsortedArray!
        
        XCTAssertFalse(equal(self.sortedArray, unwrappedUnsortedArray), "Arrays should not be equal before sorting")
        selectionSort(unwrappedUnsortedArray)
        XCTAssertTrue(equal(self.sortedArray, unwrappedUnsortedArray), "Arrays should be equal after sorting")
    }
}

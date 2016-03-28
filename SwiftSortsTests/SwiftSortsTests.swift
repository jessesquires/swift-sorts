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
    
    let sortedArray : [Int] = [0, 1, 4, 10, 23, 34, 34, 35, 66, 75, 87, 98, 687, 809, 9324]
    var unsortedArray : [Int]? = nil
    
    override func setUp() {
        super.setUp()
        self.unsortedArray = [23, 87, 1, 0, 34, 687, 34, 75, 10, 9324, 809, 98, 35, 4, 66]
    }
    
    override func tearDown() {
        self.unsortedArray = nil
        super.tearDown()
    }
    
    func testSwiftSort() {
        XCTAssertFalse(self.sortedArray == self.unsortedArray!, "Arrays should not be equal before sorting")

        let newSortedArray = swiftSort(self.unsortedArray!)
        
        XCTAssertTrue(self.sortedArray == newSortedArray, "Arrays should be equal after sorting")
    }
    
    func testQuickSort() {
        XCTAssertFalse(self.sortedArray == self.unsortedArray!, "Arrays should not be equal before sorting")
        
        let newSortedArray = quickSort(self.unsortedArray!)
        
        XCTAssertTrue(self.sortedArray == newSortedArray, "Arrays should be equal after sorting")
    }

    func testHeapSort() {
        XCTAssertFalse(self.sortedArray == self.unsortedArray!, "Arrays should not be equal before sorting")
        
        let newSortedArray = heapSort(self.unsortedArray!)
        
        XCTAssertTrue(self.sortedArray == newSortedArray, "Arrays should be equal after sorting")
    }
    
    func testInsertionSort() {
        XCTAssertFalse(self.sortedArray == self.unsortedArray!, "Arrays should not be equal before sorting")
        
        let newSortedArray = insertionSort(self.unsortedArray!)
        
        XCTAssertTrue(self.sortedArray == newSortedArray, "Arrays should be equal after sorting")
    }
    
    func testSelectionSort() {
        XCTAssertFalse(self.sortedArray == self.unsortedArray!, "Arrays should not be equal before sorting")
        
        let newSortedArray = selectionSort(self.unsortedArray!)
        
        XCTAssertTrue(self.sortedArray == newSortedArray, "Arrays should be equal after sorting")
    }
}

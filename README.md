# Swift Sorts [![Build Status](https://travis-ci.org/jessesquires/swift-sorts.svg)](http://travis-ci.org/jessesquires/swift-sorts)

A collection of [sorting algorithms](http://xkcd.com/1185/) implemented in Swift.

**See [Objective-C Sorts](https://github.com/jessesquires/objc-sorts) for comparison!**

This program runs 10 trials on the sorting algorithms below and logs its progress to the console during execution. Each trial operates the following way:

1. Generates an array of 10,000 random integers and verifies that it is not sorted
2. Each sorting algorithm is passed a copy of the array to sort
3. After each sorting algorithm finishes, the array is verified that it is sorted
4. Execution time for each algorithm is logged
5. Once all trials are complete, execution time for each algorithm is averaged across all trials

## Algorithms

* Swift `Array.sort()`
* [Quick Sort](http://en.wikipedia.org/wiki/Quicksort)
* [Heap Sort](http://en.wikipedia.org/wiki/Heapsort)
* [Insertion Sort](http://en.wikipedia.org/wiki/Insertion_sort)
* [Selection Sort](http://en.wikipedia.org/wiki/Selection_sort)

## Use

Open in Xcode, build and run.



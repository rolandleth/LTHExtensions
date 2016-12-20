//
//  ArrayTests.swift
//  LTHExtensions
//
//  Created by Roland Leth on 20.12.2016.
//  Copyright © 2016 Roland Leth. All rights reserved.
//

import XCTest
@testable import LTHExtensions

class ArrayTests: XCTestCase {
	
	func testAppendOperatorForItem() {
		var input = [1]
		input << 2
		
		XCTAssertEqual([1, 2], input)
	}
	
	func testAppendOperatorForArray() {
		var input = [1]
		input << [2, 3]
		
		XCTAssertEqual([1, 2, 3], input)
	}
	
	func testAdditionOperator() {
		XCTAssertEqual([1, 2, 3], [1, 2] + 3)
	}
	
	func testEach() {
		var sum = 0
		
		[1, 2].each {
			sum += $0
		}
		
		XCTAssertEqual(3, sum)
	}
	
}

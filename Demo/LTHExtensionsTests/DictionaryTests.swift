//
//  DictionaryTests.swift
//  LTHExtensions
//
//  Created by Roland Leth on 20.12.2016.
//  Copyright © 2016 Roland Leth. All rights reserved.
//

import XCTest
@testable import LTHExtensions

class DictionaryTests: XCTestCase {
	
	func testAppendOperator() {
		var input = [1: 1]
		input << [2: 2]
		
		XCTAssertEqual([1: 1, 2: 2], input)
	}
	
	func testAddOperator() {
		var input = [1: 1]
		input += [2: 2]
		
		XCTAssertEqual([1: 1, 2: 2], input)
	}
	
	func testAdditionOperator() {
		XCTAssertEqual([1: 1, 2: 2], [1: 1] + [2: 2])
	}
	
	func testEach() {
		let input = [1: 4, 2: 8]
		
		var keySum = 0
		var valueSum = 0
		
		input.each {
			keySum += $0
			valueSum += $1
		}
		
		XCTAssertEqual(keySum, 3)
		XCTAssertEqual(valueSum, 12)
	}
	
}

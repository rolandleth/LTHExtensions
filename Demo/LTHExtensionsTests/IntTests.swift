//
//  IntTests.swift
//  LTHExtensions
//
//  Created by Roland Leth on 20.12.2016.
//  Copyright © 2016 Roland Leth. All rights reserved.
//

import XCTest
@testable import LTHExtensions

class IntTests: XCTestCase {

	func testIsEvenTrue() {
		XCTAssertTrue(2.isEven)
	}
	
	func testIsEvenFalse() {
		XCTAssertFalse(3.isEven)
	}
	
	func testIsOddTrue() {
		XCTAssertTrue(3.isOdd)
	}
	
	func testIsOddFalse() {
		XCTAssertFalse(4.isOdd)
	}
	
	func testSquared() {
		XCTAssertEqual(4, 2.squared)
	}
	
	func testToFloat() {
		XCTAssertEqual(Float(2), 2.toFloat)
	}
	
	func testToDouble() {
		XCTAssertEqual(2.0, 2.toDouble)
	}
	
	func testTimes() {
		var count = 0
		
		3.times {
			count += 1
		}
		
		XCTAssertEqual(3, count)
	}
	
	func testDegreesToRadians() {
		XCTAssertEqualWithAccuracy(0.0523598775598299, 3.degreesToRadians, accuracy: 0.000001)
	}
	
}

//
//  StringTests.swift
//  LTHExtensionsTests
//
//  Created by Roland Leth on 20.12.2016.
//  Copyright © 2016 Roland Leth. All rights reserved.
//

import XCTest
@testable import LTHExtensions

class StringTests: XCTestCase {
	
	func testAppendOperator() {
		var input = "12"
		input << "3"
		
		XCTAssertEqual(input, "123")
	}
	
	func testSplitWithSeparator() {
		XCTAssertEqual(["1", "2", "3", "4"], "1,2,3,4".split(by: ","))
	}
	
	func testSplitWithoutSeparator() {
		XCTAssertEqual(["1", "2", "3", "4"], "1234".split())
	}
	
	func testFloatSuccess() {
		XCTAssertEqual(Float(12.5), "12.5".float)
	}
	
	func testFloatFailure() {
		XCTAssertEqual(0, "12.5a".float)
	}
	
	func testDoubleSuccess() {
		XCTAssertEqual(12.5, "12.5".double)
	}
	
	func testDoubleFailure() {
		XCTAssertEqual(0, "12.5a".double)
	}
	
	func testIntegerSuccess() {
		XCTAssertEqual(12, "12".int)
	}
	
	func testIntegerFailure() {
		XCTAssertEqual(0, "12.0".int)
	}
	
	func testBoolTrue() {
		XCTAssertTrue("1".bool)
	}
	
	func testBoolFalse() {
		XCTAssertFalse("0".bool)
	}
	
	func testSubscript() {
		XCTAssertEqual("c", "abc"[2])
	}
	
	func testRange() {
		XCTAssertEqual("bcd", "abcdef"[1...3])
	}
	
	func testLength() {
		XCTAssertEqual(3, "123".length)
	}
	
	func testIsIntegerTrue() {
		XCTAssertTrue("123".isInteger)
	}
	
	func testIsIntegerFalse() {
		XCTAssertFalse("12.0".isInteger)
	}
	
	func testIsFloatTrue() {
		XCTAssertTrue("123.0".isFloat)
	}
	
	func testIsFloatTrueFromInt() {
		XCTAssertTrue("123".isFloat)
	}
	
	func testIsFloatFalse() {
		XCTAssertFalse("12.0a".isFloat)
	}
	
	func testMultiplication() {
		XCTAssertEqual("11111", "1" * 5)
	}
	
	func testFontWithoutSize() {
		XCTAssertEqual(UIFont(name: "AvenirNext-Regular", size: UIFont.systemFontSize), "AvenirNext-Regular".uiFont())
	}
	
	func testFontWithSize() {
		let size: CGFloat = 14
		XCTAssertEqual(UIFont(name: "AvenirNext-Regular", size: size), "AvenirNext-Regular".uiFont(size: size))
	}
	
}

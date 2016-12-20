//
//  UtilsTests.swift
//  LTHExtensions
//
//  Created by Roland Leth on 20.12.2016.
//  Copyright © 2016 Roland Leth. All rights reserved.

import XCTest
@testable import LTHExtensions

class UtilsTests: XCTestCase {
	
	func testiiPhone6Plust() {
		XCTAssertFalse(Utils.iPhone6Plus)
	}
	
	func testiPhone6() {
		XCTAssertTrue(Utils.iPhone6)
	}
	
	func testiPhone5() {
		XCTAssertFalse(Utils.iPhone5)
	}
	
	func testiPhone4() {
		XCTAssertFalse(Utils.iPhone4)
	}
	
	func testiPad() {
		XCTAssertFalse(Utils.iPad)
	}
	
	func testOrientation() {
		XCTAssertEqual(.portrait, Utils.orientation)
	}
	
	func testLandscape() {
		XCTAssertFalse(Utils.landscape)
	}
	
	func testLandscapeLeft() {
		XCTAssertFalse(Utils.landscapeLeft)
	}
	
	func testLandscapeRight() {
		XCTAssertFalse(Utils.landscapeRight)
	}
	
	func testPortrait() {
		XCTAssertTrue(Utils.portrait)
	}
	
	func testStatusBarHeight() {
		XCTAssertEqual(20.0, Utils.statusBarHeight)
	}
	
	func winWidth() {
		XCTAssertEqual(558, UIScreen.main.bounds.width)
	}
	
	func winHeight() {
		XCTAssertEqual(768, Utils.winHeight)
	}
	
	func testScreenCenter() {
		XCTAssertEqual(CGPoint(x: UIScreen.main.bounds.width * 0.5,
		                       y: UIScreen.main.bounds.height * 0.5), Utils.screenCenter)
	}
	
	func testStaticNumberFormatter() {
		let n1 = Utils.numberFormatter
		let n2 = Utils.numberFormatter
		
		XCTAssertEqual(n1, n2)
	}
	
	func testStaticDateFormatter() {
		let d1 = Utils.dateFormatter
		let d2 = Utils.dateFormatter
		
		XCTAssertEqual(d1, d2)
	}
	
}

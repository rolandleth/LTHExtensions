//
//  UIViewTests.swift
//  LTHExtensions
//
//  Created by Roland Leth on 20.12.2016.
//  Copyright © 2016 Roland Leth. All rights reserved.
//

import XCTest
@testable import LTHExtensions

class UIViewTests: XCTestCase {
	
	private var view = UIView(frame: .zero)
	
	override func setUp() {
		super.setUp()
		view.frame = CGRect(x: 10, y: 11, width: 12, height: 13)
	}
	
	func testGetX() {
		XCTAssertEqual(10, view.x)
	}
	
	func testSetX() {
		view.x = 100
		XCTAssertEqual(100, view.x)
	}
	
	func testGetY() {
		XCTAssertEqual(11, view.y)
	}
	
	func testSetY() {
		view.y = 110
		XCTAssertEqual(110, view.y)
	}
	
	func testGetWidth() {
		XCTAssertEqual(12, view.width)
	}
	
	func testSetWidth() {
		view.width = 120
		XCTAssertEqual(120, view.width)
	}
	
	func testGetHeight() {
		XCTAssertEqual(13, view.height)
	}
	
	func testSetHeight() {
		view.height = 130
		XCTAssertEqual(130, view.height)
	}
	
	func testAppendOperator() {
		let subview = UIView(frame: .zero)
		view << subview
		
		XCTAssertEqual([subview], view.subviews)
	}
	
	func testSubscript() {
		let subview = UIView(frame: .zero)
		view.addSubview(subview)
		
		XCTAssertEqual(subview, view.subviews[0])
	}
	
}

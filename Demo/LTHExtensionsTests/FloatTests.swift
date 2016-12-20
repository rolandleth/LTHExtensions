//
//  FloatTests.swift
//  LTHExtensions
//
//  Created by Roland Leth on 20.12.2016.
//  Copyright © 2016 Roland Leth. All rights reserved.
//

import XCTest
@testable import LTHExtensions

class FloatTests: XCTestCase {
	
	func testDegreesToRadians() {
		XCTAssertEqualWithAccuracy(0.0523598775598299, 3.0.degreesToRadians, accuracy: 0.000001)
	}

}

//
//  Int.swift
//  LTHExtensions
//
//  Created by Roland Leth on 4/6/14.
//  Copyright (c) 2014 Roland Leth. All rights reserved.
//

import Foundation

extension Int {
	/// A `Boolean` flag which indicates if `self` is fully divisible by `2`.
	var isEven: Bool { return self % 2 == 0 }
	/// A `Boolean` flag which indicates if `self` is not fully divisible by `2`.
	var isOdd: Bool { return !isEven }
	/// An `Int` value, by multiplying `self` with itself.
	var squared: Int { return self * self }
	/// An `Int` value which represents the number of radians converted from the number of degrees.
	var degreesToRadians: Float { return toFloat * 0.0174532925199432958 }
	/// Shorthand for `Float(self)`.
	var toFloat: Float { return Float(self) }
	/// Shorthand for `Double(self)`.
	var toDouble: Double { return Double(self) }
	
	/// Performs the given closure `self` number of times.
	func times(_ task: () -> Void) {
		for _ in 0..<self {
			task()
		}
	}
}



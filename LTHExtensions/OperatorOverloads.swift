//
//  OperatorOverloads.swift
//  LTHExtensions
//
//  Created by Roland Leth on 4/6/14.
//  Copyright (c) 2014 Roland Leth. All rights reserved.
//

import UIKit
import Foundation

precedencegroup Left { associativity: left }
infix operator  |>: Left
infix operator ??=
infix operator =??

// Thanks to https://gist.github.com/kristopherjohnson/ed97acf0bbe0013df8af
/// Applies the right hand closure to the left hand operator.
func |><T,U>(lhs : T, rhs : (T) -> U) -> U {
	return rhs(lhs)
}

/// Assigns the right hand operator's value to the left hand operator, if the former is not nil.
func =??<T>(lhs: inout T, rhs: @autoclosure () -> T?) {
	guard let rhs = rhs() else { return }
	
	lhs = rhs
}

/// Assigns the right hand operator's value to the left hand operator, if the latter is nil.
func ??=<T>(lhs: inout T?, rhs: @autoclosure () -> T?) {
	guard lhs == nil else { return }
	
	lhs = rhs()
}

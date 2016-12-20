//
//  Array.swift
//  LTHExtensions
//
//  Created by Roland Leth on 4/6/14.
//  Copyright (c) 2014 Roland Leth. All rights reserved.
//

extension Array {
	/// Shorthand for `forEach`.
	func each(_ f: (Element) -> Void) {
		for e in self {
			f(e)
		}
	}
}

/// Returns an array with the left hand operand's elements, plus the right hand operand.
func +<T>(left: [T], right: T) -> [T] {
	var l = left
	l << right
	
	return l
}

/// Appends the right hand opperand to the left hand operand array.
func <<<T>(left: inout [T], right: T) {
	left.append(right)
}

/// Appends the right hand opperand's elements to the left hand operand array.
func <<<T>(left: inout [T], right: [T]) {
	left += right
}

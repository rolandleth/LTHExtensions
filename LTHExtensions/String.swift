//
//  String.swift
//  LTHExtensions
//
//  Created by Roland Leth on 4/6/14.
//  Copyright (c) 2014 Roland Leth. All rights reserved.
//

import Foundation
import UIKit

extension String {
	var length: Int {
		var i = 0
		for _ in self.characters {
			i += 1
		}
		return i
	}
	
	/// These below mimic their NSString.xValue counterparts.
	var bool: Bool {
		if let b = Bool(self) {
			return b
		}
		else if let f = Float(self) {
			return Int(f) != 0
		}
		return false
	}
	/// The `Int` value of the string, if it can be converted, or `0` otherwise.
	var int: Int { return Int(self) ?? 0 }
	/// The `Float` value of the string, if it can be converted, or `0` otherwise.
	var float: Float { return Float(self) ?? 0 }
	/// The `Double` value of the string, if it can be converted, or `0` otherwise.
	var double: Double { return Double(self) ?? 0 }
	/// A `Boolean` flag which indicates if the string is a valid `Float`. `123` and `123.0` would be both `true`.
	var isFloat: Bool { return NumberFormatter().number(from: self) != nil && !isEmpty }
	/// A `Boolean` flag which indicates if the string is a valid `Int`. `123` would be `true`, while `123.0` would be `false`.
	var isInteger: Bool {
		let digits = CharacterSet.decimalDigits
		return digits.isSuperset(of: CharacterSet(charactersIn: self)) && !isEmpty
	}
	
	/// An `UIImage?` by calling `UIImage(named: self)`.
	func uiImage() -> UIImage? {
		return UIImage(named: self)
	}
	
	/// An `UIFont?` by calling `UIFont(named: self, size: fontSize)`.
	func uiFont(size: CGFloat) -> UIFont? {
		return UIFont(name: self, size: size)
	}
	
	/// An `UIFint?` by calling `UIFont(named: self, size: UIFont.systemFontSize)`.
	func uiFont() -> UIFont? {
		return uiFont(size: UIFont.systemFontSize)
	}
	
	/// Returns an array containing substrings from the `String` that have been divided by a given separator. If no separator is passed in, the string is split into characters.
	func split(by delimiter: String? = nil) -> [String] {
		if let separator = delimiter {
			return components(separatedBy: separator)
		}
		else {
			return characters.map { "\($0)" }
		}
	}
	
	/// Accesses the element at the specified position.
	subscript(pos: Int) -> String {
		return self[pos...pos]
	}
	
	/// Returns a substring at the specified range.
	subscript(range: ClosedRange<Int>) -> String {
		let start = characters.index(startIndex, offsetBy: range.lowerBound)
		let end = characters.index(startIndex, offsetBy: range.upperBound + 1)
		
		return substring(with: (start..<end))
	}
	
	/// Returns a substring at the specified range.
	subscript(range: Range<Int>) -> String {
		let start = characters.index(startIndex, offsetBy: range.lowerBound)
		let end = characters.index(startIndex, offsetBy: range.upperBound)
		
		return substring(with: (start..<end))
	}
}

/// Returns a string multiplied by the right operand of times.
func *(left: String, right: Int) -> String {
	return String(repeating: left, count: right)
}

/// Appens the right hand operand to the left one.
func <<(left: inout String, right: String) {
	left += right
}

/// Appens the right hand operand to the left one.
func <<(left: inout String, right: Character) {
	left += String(right)
}

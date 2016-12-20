//
//  UIView.swift
//  LTHExtensions
//
//  Created by Roland Leth on 4/6/14.
//  Copyright (c) 2014 Roland Leth. All rights reserved.
//

import UIKit

extension UIView {
	/// Shorthand for `frame.origin.x`.
	var x: CGFloat {
		get { return frame.origin.x }
		set { frame = CGRect(x: newValue, y: y, width: width, height: height) }
	}
	
	/// Shorthand for `frame.origin.y`.
	var y: CGFloat {
		get { return frame.origin.y }
		set { frame = CGRect(x: x, y: newValue, width: width, height: height) }
	}
	
	/// Shorthand for `frame.size.width`.
	var width: CGFloat {
		get { return frame.size.width }
		set { frame = CGRect(x: x, y: y, width: newValue, height: height) }
	}
	
	/// Shorthand for `frame.size.height`.
	var height: CGFloat {
		get { return frame.size.height }
		set { frame = CGRect(x: x, y: y, width: width, height: newValue) }
	}
	
	/// An `UIView`, found at `digitIndex` in `self.subviews`.
	subscript(digitIndex: Int) -> UIView? {
		for (index, view) in subviews.enumerated() where index == digitIndex {
			return view
		}
		
		return nil
	}
	
	/// Sets the `center.y` to the passed `view`'s `width * 0.5`.
	func centerHorizontally(in view: UIView) {
		center = CGPoint(x: view.width * 0.5, y: self.center.y)
	}
	
	/// Sets the `center.y` to the passed `view`'s `height * 0.5`.
	func centerVertically(in view: UIView) {
		center = CGPoint(x: center.x, y: view.height * 0.5)
	}
	
	/// Sets the `center` to the passed `view`'s `width * 0.5` and `height * 0.5`.
	func center(in view: UIView) {
		center = CGPoint(x: view.width * 0.5, y: view.height * 0.5)
	}
	
	/// Aligns `center.y` with the passed `view`'s `center.x`.
	func alignHorizontally(with view: UIView) {
		center = CGPoint(x: view.center.x, y: center.y)
	}
	
	/// Aligns `center.y` with the passed `view`'s `center.y`.
	func alignVertically(with view: UIView) {
		center = CGPoint(x: center.x, y: view.center.y)
	}
	
	/// Aligns `center` with the passed `view`'s `center`.
	func align(with view: UIView) {
		center = view.center
	}
}

/// Adds the right hand operator as a `subview` to the left hand operator.
func << <T: UIView>(left: inout T, right: T) {
	left.addSubview(right)
}

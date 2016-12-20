//
//  UIButton.swift
//  LTHExtensions
//
//  Created by Roland Leth on 22.6.14.
//  Copyright (c) 2014 Roland Leth. All rights reserved.
//

import UIKit

extension UIButton {
	
	/// Aligns the image, if any exists, to the right of the title, with an inset of `7`, centering them both in the button.
	func alignImageOnTheRightOfTitle() {
		titleEdgeInsets = UIEdgeInsets(top: 0, left: -(imageView!.width + 7), bottom: 0, right: imageView!.width + 7)
		imageEdgeInsets = UIEdgeInsets(
			top: 0, left: titleLabel!.width + 7,
			bottom: 0, right: -(titleLabel!.width + 7)
		)
	}
	
	/// Aligns the image, if any exists, to the left of the title, with an inset of `-11` and `7`, respectively.
	func alignImageOnTheLeftOfTitle() {
		titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -11)
		imageEdgeInsets = UIEdgeInsets(top: 0, left: -7, bottom: 0, right: 0)
	}
}

//
//  Image.swift
//  LTHExtensions
//
//  Created by Roland Leth on 4/6/14.
//  Copyright (c) 2014 Roland Leth. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
	
	
	/// Returns an `UIImage` from an `UIColor`.
	///
	/// - Parameter color: The color to be used.
	/// - Returns: The new image.
	class func image(with color: UIColor) -> UIImage {
		let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
		UIGraphicsBeginImageContextWithOptions(rect.size, false, 2)
		let context = UIGraphicsGetCurrentContext()
		
		context?.setFillColor(color.cgColor)
		context?.fill(rect)
		
		let image = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		
		return image!
	}
	
	
	/// Returns an `UIImage` with a tint color applied, using the passed in blend mode.
	///
	/// - Parameters:
	///   - tintColor: The tint color to be applied.
	///   - blendMode: The blend mode to be used.
	/// - Returns: The new image.
	func tintedImage(with tintColor: UIColor, blendMode: CGBlendMode) -> UIImage {
		let bounds = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height)
		
		UIGraphicsBeginImageContextWithOptions(self.size, false, 2);
		tintColor.setFill()
		UIRectFill(bounds);
		draw(in: bounds, blendMode: blendMode, alpha: 1.0)
		
		if blendMode.rawValue != CGBlendMode.destinationIn.rawValue {
			draw(in: bounds, blendMode:CGBlendMode.destinationIn, alpha:1.0)
		}
		
		let tintedImage = UIGraphicsGetImageFromCurrentImageContext();
		UIGraphicsEndImageContext();
		
		return tintedImage!;
	}
}

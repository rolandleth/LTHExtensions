//
//  Utils.swift
//  LTHExtensions
//
//  Created by Roland Leth on 4/6/14.
//  Copyright (c) 2014 Roland Leth. All rights reserved.
//

import UIKit

struct Utils {
	
	/// A `Boolean` flag which indicates if the device is an iPhone 6+, by comparing the screen's height with `736`. If an iPhone 6+ user uses the "Zoomed" mode, the screen height will be `667`, the equivalent of an iPhone 6.
	static var iPhone6Plus: Bool { return UIScreen.main.bounds.size.height == 736 }
	
	/// A `Boolean` flag which indicates if the device is an iPhone 6, by comparing the screen's height with `667`. If an iPhone 6 user uses the "Zoomed" mode, the screen height will be `568`, the equivalent of an iPhone 5. If an iPhone 6+ user uses the "Zoomed" mode, the screen height will be `667`.
	static var iPhone6: Bool { return UIScreen.main.bounds.size.height == 667 }
	
	/// A `Boolean` flag which indicates if the device is an iPhone 5, by comparing the screen's height with `568`.
	static var iPhone5: Bool { return UIScreen.main.bounds.size.height == 568 }
	
	/// A `Boolean` flag which indicates if the device is an iPhone 4, by comparing the screen's height with `480`.
	static var iPhone4: Bool { return UIScreen.main.bounds.size.height == 480 }
	
	/// A `Boolean` flag which indicates if the device is an iPad, by comparing the device's `userInterfaceIdiom` with `.pad`.
	static var iPad = UIDevice.current.userInterfaceIdiom == .pad
	
	/// The orientation of the device, read from `UIApplication.shared.statusBarOrientation`.
	static var orientation: UIInterfaceOrientation {
		return UIApplication.shared.statusBarOrientation
	}
	
	/// A `Boolean` value which indicates if the device is in landscape by comparing `UIApplication.shared.statusBarOrientation` with `.landscapeLeft` and `.landscapeRight`.
	static var landscape: Bool {
		return UIApplication.shared.statusBarOrientation == UIInterfaceOrientation.landscapeLeft || UIApplication.shared.statusBarOrientation == UIInterfaceOrientation.landscapeRight
	}
	
	/// A `Boolean` value which indicates if the device is in landscape (left oriented) by comparing `UIApplication.shared.statusBarOrientation` with `.landscapeLeft`.
	static var landscapeLeft: Bool {
		return UIApplication.shared.statusBarOrientation == UIInterfaceOrientation.landscapeLeft
	}
	
	/// A `Boolean` value which indicates if the device is in landscape (right oriented) by comparing `UIApplication.shared.statusBarOrientation` with `.landscapeRight`.
	static var landscapeRight: Bool {
		return UIApplication.shared.statusBarOrientation == UIInterfaceOrientation.landscapeRight
	}
	
	/// A `Boolean` value which indicates if the device is in landscape by comparing `UIApplication.shared.statusBarOrientation` with `.landscapeLeft` and `.landscapeRight`.
	static var portrait: Bool {
		return !landscape
	}
	
	/// The height of the status bar, read from `UIApplication.shared.statusBarFrame.height`.
	static var statusBarHeight: CGFloat {
		return UIApplication.shared.statusBarFrame.height
	}
	
	/// The height of the screen, read from `UIScreen.main.bounds.height`.
	static var winHeight: CGFloat {
		return UIScreen.main.bounds.height
	}
	
	/// The width of the screen, read from `UIScreen.main.bounds.width`.
	static var winWidth: CGFloat {
		return UIScreen.main.bounds.width
	}
	
	/// A `CGPoint` found at `UIScreen.main.bounds.width * 0.5` and `UIScreen.main.bounds.height * 0.5`.
	static var screenCenter: CGPoint {
		return CGPoint(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.5)
	}
	
	/// A static number formatter, because creating one uses a lot of resources. Accessing it sets these properties: `locale = .current`, `minimumFractionDigits = 0`, `maximumFractionDigits = 2`, `numberStyle = .none` and `alwaysShowsDecimalSeparator = false`.
	static var numberFormatter: NumberFormatter {
		struct Static {
			static let formatter: NumberFormatter = NumberFormatter()
		}
		
		// Reset on every access.
		Static.formatter.locale = Locale.current
		Static.formatter.maximumFractionDigits = 2
		Static.formatter.minimumFractionDigits = 0
		Static.formatter.alwaysShowsDecimalSeparator = false
		Static.formatter.numberStyle = .none
		
		return Static.formatter
	}
	
	/// A static date formatter, because creating one uses a lot of resources. Accessing it sets these properties: `locale = .current`, `dateFormat = nil`.
	static var dateFormatter: DateFormatter {
		struct Static {
			static let formatter: DateFormatter = DateFormatter()
		}
		
		// Reset on every access.
		Static.formatter.locale = Locale.current
		Static.formatter.dateFormat = nil
		
		return Static.formatter
	}
}

/// Prints the function that called the current function. 
public func printCallingFunction() {
	let syms = Thread.callStackSymbols
	
	if !syms.isEmpty {
		print("\(syms[2])")
	}
	// 0 is this function
	// 1 is the function we want to find the caller for
	// 2 is the caller
}


/**
Replacement for `print`, with extra info.

- parameter object:   The object to be printed.
- parameter function: The function where the call happens.
- parameter file:     The class where the call happens.
- parameter line:     The line where the call happens.
*/
func nslog<T>(
	_ object: T,
	_ function: String = #function,
	_ file: String = #file,
	_ line: UInt = #line) {
	#if DEBUG
		let filename = NSURL(string: file)!.lastPathComponent!
			.replacingOccurrences(of: ".swift", with: "")
		
		print("-- \(filename).\(function) [\(line)] - \(object)")
	#endif
}


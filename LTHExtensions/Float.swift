//
//  Float.swift
//  LTHExtensions
//
//  Created by Roland Leth on 4/6/14.
//  Copyright (c) 2014 Roland Leth. All rights reserved.
//

import Foundation

fileprivate let delta: Double = 0.0174532925199432958

extension Float {
	/// A `Float` value which represents the number of radians converted from the number of degrees.
	var degreesToRadians: Float { return self * Float(delta) }
}

extension Double {
	/// A `Double` value which represents the number of radians converted from the number of degrees.
	var degreesToRadians: Double { return self * delta }
}

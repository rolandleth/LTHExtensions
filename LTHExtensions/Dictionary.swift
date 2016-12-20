//
//  Dictionary.swift
//  LTHExtensions
//
//  Created by Roland Leth on 22.6.14.
//  Copyright (c) 2014 Roland Leth. All rights reserved.
//


extension Dictionary {
	/// Shorthand for `forEach`.
	func each(_ f: (Key, Value) -> ()) {
		forEach { f($0, $1) }
	}
}

/// Iterates through all of right hand operator's keys and values, adds (*overwrites*) them to the left hand operator, and returns a new dictionary.
func +<K, V>(left: [K:V], right: [K:V]) -> [K:V] {
	var l = left
	
	for (k, v) in right {
		l[k] = v
	}
	
	return l
}

/// Iterates through all of right hand operator's keys and values, and adds (*overwrites*) them to the left hand operator.
func +=<K, V>(left: inout [K:V], right: [K:V]) {
	left = left + right
}

/// Iterates through all of right hand operator's keys and values, and adds (*overwrites*) them to the left hand operator.
func <<<K, V>(left: inout [K:V], right: [K:V]) {
	left += right
}

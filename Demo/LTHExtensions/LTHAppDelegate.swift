//
//  AppDelegate.swift
//  LTHExtensions
//
//  Created by Roland Leth on 4.6.14.
//  Copyright (c) 2014 Roland Leth. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	lazy var window: UIWindow = {
		let win = UIWindow(frame: UIScreen.mainScreen().bounds)
		win.backgroundColor = UIColor.whiteColor()
		return win
		}()
	
	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
		window.makeKeyAndVisible()
		
		p("")
		p("=== String ===")
		var s = "12"
		p("s - \(s)")
		s << "345"
		p("s << \"345\" - \(s)")
		
		println("s.floatValue - \(s.floatValue)")
		println("s.doubleValue - \(s.doubleValue)")
		println("s.intValue - \(s.intValue)")
		println("s.boolValue - \(s.boolValue)")
		println("s[2] - \(s[2])")
		println("s[1...3] - \(s[1...3])")
		println("s.length - \(s.length)")
		println("s * 2 - \(s * 2)")
		let font = "AvenirNext-Regular".uifont()
		p("\"AvenirNext\".uifont() - \(font)")
		var s1 = "12"
		p("s.containsString(\"12\") - \(s.containsString(s1))")
		s1 = "13"
		p("s.containsString(\"13\") - \(s.containsString(s1))")
		p("s.isInt - \(s.isInt)")
		p("s.isFloat - \(s.isFloat)")
		s = "123.0"
		p("s - \(s)")
		p("s.isInt - \(s.isInt)")
		p("s.isFloat - \(s.isFloat)")
		s = "123..0"
		p("s - \(s)")
		p("s.isInt - \(s.isInt)")
		p("s.isFloat - \(s.isFloat)")
		
		p("")
		p("=== Int ===")
		var i: Int?
		p("i - \(i)")
		i ||= 2
		p("i ||= 2 - \(i)")
		i ||= 3
		p("i ||= 3 - \(i)")
		println("2.isEven - \(2.isEven)")
		println("2.isOdd - \(2.isOdd)")
		println("2.squared - \(2.squared)")
		println("2.toFloat - \(2.toFloat)")
		print("2.times{ print(\"12345 \") } - ")
		2.times{ print("12345 ") }
		println()
		
		p("")
		p("=== Float ===")
		p("5.0.degreesToRadians - \(5.0.degreesToRadians)")
		p("5.degreesToRadians - \(5.degreesToRadians)")
		
		p("")
		p("=== Array ===")
		var a = [1]
		println("a - \(a)")
		a << 2
		println("a << 2 - \(a)")
		a << [3, 4]
		println("a << [3, 4] - \(a)")
		a = a + 5
		println("a = a + 5 - \(a)")
		a = a + [6, 7]
		println("a = a + [6, 7] - \(a)")
		println("a.first - \(a.first)")
		println("a.last - \(a.last)")
		psl("a.each { print(\"\\($0) \") } - ")
		a.each { psl("\($0) ") }
		p("")
		
		p("")
		p("=== Dictionary ===")
		var d = [1: 1]
		println("d - \(d)")
		d << [2: 2]
		println("d << [2, 2] - \(d)")
		d += [3: 3]
		println("d += [3, 3] - \(d)")
		d = d + [4: 4]
		println("d = d + [4, 4] - \(d)")
		psl("d.each { print(\"\\($0) \") } - ")
		d.each { psl("\($0) ") }
		
		p("")
		
		p("")
		p("=== UIView ===")
		var view = UIView(frame: CGRectMake(1, 1, 1, 1))
		var view1 = UIView(frame: CGRectMake(2, 2, 2, 2))
		view.x = 11
		view.y = 11
		view.width = 11
		view.height = 11
		p("view - \(view)")
		view << view1
		p("view[0] - \(view[0])")
		
		p("")
		p("=== UIButton ===")
		p("UIButton.custom - \(UIButton().custom)")
		
		return true
	}
	
	func applicationWillResignActive(application: UIApplication) {
		// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
		// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
	}
	
	func applicationDidEnterBackground(application: UIApplication) {
		// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
		// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
	}
	
	func applicationWillEnterForeground(application: UIApplication) {
		// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
	}
	
	func applicationDidBecomeActive(application: UIApplication) {
		// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
	}
	
	func applicationWillTerminate(application: UIApplication) {
		// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
	}
	
	
}


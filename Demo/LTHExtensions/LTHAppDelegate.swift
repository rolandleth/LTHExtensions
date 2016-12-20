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
	
	var window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)
	
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		
		window?.rootViewController = UIViewController()
		window?.makeKeyAndVisible()
		
		return true
	}
	
}


//
//  AppDelegate.swift
//  ViperExample
//
//  Created by Mahmoud Shurrab on 25/12/2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window?.rootViewController = UINavigationController(rootViewController: UsersRouter.createModule())
        
        return true
    }
}


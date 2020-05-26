//
//  AppDelegate.swift
//  FirstApp
//
//  Created by hongjuyeon_dev on 2020/05/26.
//  Copyright © 2020 hongjuyeon. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirstAppLog(#function)
        
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        let sourceApplication = options[UIApplication.OpenURLOptionsKey.sourceApplication] as? String
        NSLog("app: \(app) url: \(url) sourceApplication: \(String(describing: sourceApplication))")
        
        let urlScheme = url.scheme
        let urlQuery = url.query
        
        FirstAppLog("scheme: \(String(describing: urlScheme)) query: \(String(describing: urlQuery))")
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        FirstAppLog(#function)
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        FirstAppLog(#function)
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        FirstAppLog(#function)
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        FirstAppLog(#function)
    }
}


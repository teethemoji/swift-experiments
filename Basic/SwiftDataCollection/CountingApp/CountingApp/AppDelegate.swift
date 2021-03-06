//
//  AppDelegate.swift
//  CountingApp
//
//  Created by 김보영 on 2022/02/05.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var launchCount = 0
    var configurationForConnectingCount = 0

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    // This will allow you to access AppDelegate and your count variables within ViewController. Your AppDelegate instance is known as a singleton and can be accessed in this manner. Since you know what the type is, you can safely downcast it using as! AppDelegate.
    
}


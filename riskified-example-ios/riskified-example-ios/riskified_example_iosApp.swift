//
//  riskified_example_iosApp.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/10/22.
//

import SwiftUI
import RiskifiedBeacon

@main
struct riskified_example_iosApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    //var beacon: Void = RiskifiedBeacon .start("geringtestAsync.com", sessionToken: "session1", debugInfo: true)
    var body: some Scene {
        WindowGroup {
            ContentView()
            //LoginComponent()
        }
    }
}
 

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("finished launching")
        
        RiskifiedBeacon .start("geringtestAsync.com", sessionToken: "session1", debugInfo: true)
        
        
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
    
}


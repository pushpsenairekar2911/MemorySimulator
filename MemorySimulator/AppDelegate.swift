//
//  AppDelegate.swift
//  MemorySimulator
//
//  Created by Pushpsen Airekar on 07/09/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    let memoryMointor = MemoryMonitor()
    let memoryPressureMonitor = MemoryPressureMonitor.shared

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // 2. Detect low-memory on Application Class
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        // Remove unwanted resources that can be re-created
        print("\(#function) triggered")
    }


}


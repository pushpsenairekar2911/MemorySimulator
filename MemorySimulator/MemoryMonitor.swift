//
//  MemoryMonitor.swift
//  MemorySimulator
//
//  Created by Pushpsen Airekar on 07/09/21.
//

import UIKit

// 3. Detect low-memory on Custom Component using didReceiveMemoryWarningNotification to the default notification center.
struct MemoryMonitor {
    
    init() {
        NotificationCenter.default.addObserver(forName: UIApplication.didReceiveMemoryWarningNotification, object: nil, queue: nil) { notification in
            print("\(#function) triggered with \(notification) notification")
        }
    }
    
}

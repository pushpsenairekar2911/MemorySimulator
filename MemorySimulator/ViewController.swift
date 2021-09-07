//
//  ViewController.swift
//  MemorySimulator
//
//  Created by Pushpsen Airekar on 07/09/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // 1. Detect low-memory on Active View Controller
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Remove unwanted resources that can be re-created
        print("\(#function) triggered")
    }

}


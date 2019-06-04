//
//  ViewController.swift
//  assessment3
//
//  Created by Yifan Liu on 2019/5/22.
//  Copyright © 2019 yifanliu. All rights reserved.
//

import UIKit
import HealthKit
class ViewController: UIViewController {

    // Medicine reminder, use local notificiations: https://medium.com/quick-code/local-notifications-with-swift-4-b32e7ad93c2
    override func viewDidLoad() {
        super.viewDidLoad()
        let health = Health()
        health.getHealthKitPermission()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


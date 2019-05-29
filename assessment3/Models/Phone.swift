//
//  Phone.swift
//  assessment3
//
//  Created by Yifan Liu on 2019/5/22.
//  Copyright © 2019 yifanliu. All rights reserved.
//

import Foundation
import UIKit

class Phone {
    func call(number: String) {
        
        if let url = URL(string: "tel://\(number)"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
}

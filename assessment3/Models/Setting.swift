//
//  Setting.swift
//  assessment3
//
//  Created by Yifan Liu on 2019/5/22.
//  Copyright © 2019 yifanliu. All rights reserved.
//

import Foundation

class Setting {
    let phone_number_key = "PHONE_NUMBER"
    func savePhoneNumber(phone_number: String) {
        // save to user defaults
        UserDefaults.standard.set(phone_number, forKey: phone_number_key)
    }
    
    func getPhoneNumber() -> String {
        // read user defaults and provide the value

        if let number = UserDefaults.standard.value(forKey: phone_number_key) {
            return number as! String
        } else {
            self.savePhoneNumber(phone_number: "")
            return ""
        }
    }
}

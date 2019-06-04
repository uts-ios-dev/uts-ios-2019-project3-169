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
    let contact_index_key = "CONTACT_INDEX"
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
    
    func saveContactIndex(index: Int) {
        UserDefaults.standard.set(index, forKey: contact_index_key)
    }
    
    func getContactIndex() -> Int {
        if let number = UserDefaults.standard.value(forKey: contact_index_key) {
            return number as! Int
        } else {
            self.saveContactIndex(index: 0)
            return 0
        }
    }
}

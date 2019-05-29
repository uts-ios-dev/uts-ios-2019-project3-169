//
//  SettingsViewController.swift
//  assessment3
//
//  Created by Yifan Liu on 2019/5/22.
//  Copyright © 2019 yifanliu. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let settings = Setting()
    
    var currentPhoneNumber: String = ""
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return contacts.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return contacts[row].name
    }

    @IBOutlet weak var contactPicker: UIPickerView!
    
    var contacts: [Contact] = [Contact]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        contacts = appDelegate.getContacts()
        
        self.contactPicker.dataSource = self
        self.contactPicker.delegate = self
        
        self.currentPhoneNumber = settings.getPhoneNumber()
        // Do any additional setup after loading the view.
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currentPhoneNumber = self.contacts[row].phone_number!
    }
    override func viewWillDisappear(_ animated: Bool) {
        // save the emergency contact
        
        settings.savePhoneNumber(phone_number: self.currentPhoneNumber)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  HomeViewController.swift
//  assessment3
//
//  Created by Yifan Liu on 2019/5/22.
//  Copyright © 2019 yifanliu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    let phone = Phone()
    let settings = Setting()
    @IBAction func btnCall(_ sender: Any) {
        let number = settings.getPhoneNumber()
        guard number != "" else {
            let alert = UIAlertController(title: "No Emergency Contact", message: "Please select an emergency contact from the settings menu", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true)
            return
        }
        phone.call(number: settings.getPhoneNumber())
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.saveContact(name: "Tim", phone_number: "1111111")
        appDelegate.saveContact(name: "Jim", phone_number: "2222222")
        appDelegate.saveContact(name: "Bob", phone_number: "44444444")
        appDelegate.saveContact(name: "Jack", phone_number: "3333333")
        appDelegate.saveContact(name: "Liam", phone_number: "66666666")
        // Do any additional setup after loading the view.
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

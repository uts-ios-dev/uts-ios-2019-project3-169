//
//  PopUpViewController.swift
//  assessment3
//
//  Created by Yifan Liu on 2019/5/29.
//  Copyright © 2019 yifanliu. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.alpha = 0.2
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
    @IBOutlet weak var tfPhoneNumber: UITextField!
    @IBOutlet weak var tfName: UITextField!
    @IBAction func btnCancel(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    
    @IBAction func btnAdd(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.saveContact(name: self.tfName.text!, phone_number: self.tfPhoneNumber.text!)
        
        NotificationCenter.default.post(name: Notification.Name("contact"), object: nil)
        self.view.removeFromSuperview()
        
    }
}

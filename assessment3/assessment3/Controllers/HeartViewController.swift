//
//  HeartViewController.swift
//  assessment3
//
//  Created by Yifan Liu on 2019/5/29.
//  Copyright © 2019 yifanliu. All rights reserved.
//

import UIKit

class HeartViewController: UIViewController {

    var currentHeartRate = 0
    var timer = Timer()
    // how many times we have animated
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let health = Health()
        currentHeartRate = health.currentHeartRate()
        self.updateHeartRateLabel()
        self.beat()
        timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true) {_ in
            self.beat()
        }
    }
    
    @IBOutlet weak var lblHeart: UILabel!
    @IBOutlet weak var ivHeart: UIImageView!
    
    func updateHeartRateLabel() {
        self.lblHeart.text = "Heart Rate: \(self.currentHeartRate)"
    }
    
    func beat() {
        // every 6 seconds change the current heart rate reading
        counter += 1
        if counter % 3 == 0 {
            let lowBound = self.currentHeartRate - 2
            let highBound = self.currentHeartRate + 3
            self.currentHeartRate = Int.random(in: lowBound...highBound)
            print("new heart rate is \(self.currentHeartRate)")
            self.updateHeartRateLabel()
        }
        UIView.animate(withDuration: 0.5, animations: {
            self.ivHeart.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }) { (complete) in
            UIView.animate(withDuration: 0.4, animations: {
                self.ivHeart.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            })
        }
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

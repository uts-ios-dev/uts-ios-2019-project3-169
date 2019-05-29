//
//  Health.swift
//  assessment3
//
//  Created by Yifan Liu on 2019/5/22.
//  Copyright © 2019 yifanliu. All rights reserved.
//

import Foundation
import HealthKit

class Health {

    let healthStore = HKHealthStore()
    var heartRateData: [HKSample]?
    
    //Permission
    func getHealthKitPermission() {
        let healthkitTypesToRead = NSSet(array: [
            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate) ?? ""
            ])
        
        healthStore.requestAuthorization(toShare: nil, read: healthkitTypesToRead as? Set) { (success, error) in
            if success {
                print("Permission accept.")
                
            } else {
                if error != nil {
                    print(error ?? "")
                }
                print("Permission denied.")
            }
        }
    }
}

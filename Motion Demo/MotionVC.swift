//
//  MotionVC.swift
//  Motion Demo
//
//  Created by Mohammad Kiani on 2020-06-12.
//  Copyright © 2020 mohammadkiani. All rights reserved.
//

import UIKit
import CoreMotion

class MotionVC: UIViewController {

    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    // we need a motion manager
    var motionManager: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates(to: .main) { (data, error) in
            guard let accelerometerData = data else {return}
//            print(accelerometerData)
            
            let formatter = NumberFormatter()
            formatter.minimumFractionDigits = 1
            formatter.maximumFractionDigits = 2
            
            let x = formatter.string(for: accelerometerData.acceleration.x)!
            let y = formatter.string(for: accelerometerData.acceleration.y)!
            let z = formatter.string(for: accelerometerData.acceleration.z)!
            
            print(x, y, z)
            
            self.xLabel.text = "X: \(x)"
            self.yLabel.text = "Y: \(y)"
            self.zLabel.text = "Z: \(z)"
            
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

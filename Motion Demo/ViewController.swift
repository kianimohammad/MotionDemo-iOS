//
//  ViewController.swift
//  Motion Demo
//
//  Created by Mohammad Kiani on 2020-06-12.
//  Copyright © 2020 mohammadkiani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpWallpaper()
    }
    
    func setUpWallpaper() {
        let min = CGFloat(-100)
        let max = CGFloat(100)
        
        //MARK: - apply motion to horizontal axix
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        //MARK: - apply motion to vertical axis
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        imageView.addMotionEffect(motionEffectGroup)
        
    }


}


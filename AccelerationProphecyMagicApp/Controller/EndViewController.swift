//
//  EndViewController.swift
//  AccelerationProphecyMagicApp
//
//  Created by 小松真也 on 2020/07/28.
//  Copyright © 2020 小松真也. All rights reserved.
//

import UIKit
import CoreMotion

class EndViewController: UIViewController {
    
    
    @IBOutlet weak var endImage: UIImageView!
    
    @IBOutlet weak var backButton: UIButton!
    
    // MotionManager
    let motionManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //トランプの画像を表示
        self.endImage.image = UIImage(named: "Diamond")
        
        if self.motionManager.isAccelerometerAvailable {
            // intervalの設定 [sec]
            self.motionManager.accelerometerUpdateInterval = 0.2

            // センサー値の取得開始
            self.motionManager.startDeviceMotionUpdates(to: OperationQueue.current!, withHandler: {(motion:CMDeviceMotion?, error:Error?) in
                
                self.getMotionData(deviceMotion: motion!)
                if (motion?.gravity.x)! >= 0.9 {
                    //センサーをストップする
                    self.motionManager.stopDeviceMotionUpdates()
                    //トランプの画像を表示
                    self.endImage.image = UIImage(named: "Spade")
                }else if (motion?.gravity.x)! <= -0.9 {
                    //センサーをストップする
                    self.motionManager.stopDeviceMotionUpdates()
                     //トランプの画像を表示
                    self.endImage.image = UIImage(named: "Club")
                }else if (motion?.gravity.y)! >= 0.9 {
                    //センサーをストップする
                    self.motionManager.stopDeviceMotionUpdates()
                     //トランプの画像を表示
                    self.endImage.image = UIImage(named: "Heart")
                }else if (motion?.gravity.y)! <= -0.9 {
                    //センサーをストップする
                    self.motionManager.stopDeviceMotionUpdates()
                }
            })
        }
    }
    
    
    @IBAction func backButton(_ sender: Any) {

        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    

   //モーションデータの取得（例としてコンソールへ出力）
    func getMotionData(deviceMotion:CMDeviceMotion) {
        print("attitudeX:", deviceMotion.attitude.pitch)
        print("attitudeY:", deviceMotion.attitude.roll)
        print("attitudeZ:", deviceMotion.attitude.yaw)
        print("gyroX:", deviceMotion.rotationRate.x)
        print("gyroY:", deviceMotion.rotationRate.y)
        print("gyroZ:", deviceMotion.rotationRate.z)
        print("gravityX:", deviceMotion.gravity.x)
        print("gravityY:", deviceMotion.gravity.y)
        print("gravityZ:", deviceMotion.gravity.z)
        print("accX:", deviceMotion.userAcceleration.x)
        print("accY:", deviceMotion.userAcceleration.y)
        print("accZ:", deviceMotion.userAcceleration.z)
    }
}

//
//  PlayViewController.swift
//  AccelerationProphecyMagicApp
//
//  Created by 小松真也 on 2020/06/07.
//  Copyright © 2020 小松真也. All rights reserved.
//

import UIKit
import CoreMotion

class PlayViewController: UIViewController {
    
    
    @IBOutlet weak var playImage: UIImageView!
    
    @IBOutlet weak var headLabel: UILabel!
    
    @IBOutlet weak var footLabel: UILabel!
    
    // MotionManager
    let motionManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if motionManager.isAccelerometerAvailable {
//           // intervalの設定 [sec]
//           motionManager.accelerometerUpdateInterval = 0.2
//
//           // センサー値の取得開始
//           motionManager.startDeviceMotionUpdates(to: OperationQueue.current!, withHandler: {(motion:CMDeviceMotion?, error:Error?) in
//               self.getMotionData(deviceMotion: motion!)
//
//           })
//       }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        playImage.image = UIImage(named: "Trump")
    
    }

    
    @IBAction func playStart(_ sender: Any) {
        
        //アラートの作成
        let dialog = UIAlertController(title: nil, message: "スマートフォンの画面が下向きになるように置いてください。", preferredStyle: .alert)
        //ボタンのタイトル
        dialog.addAction(UIAlertAction(title: "Return to Top", style: .default, handler: nil))
        //実際に表示させる
        self.present(dialog, animated: true, completion: nil)
        
    }
    
    // モーションデータの取得（例としてコンソールへ出力）
//    func getMotionData(deviceMotion:CMDeviceMotion) {
//        print("attitudeX:", deviceMotion.attitude.pitch)
//        print("attitudeY:", deviceMotion.attitude.roll)
//        print("attitudeZ:", deviceMotion.attitude.yaw)
//        print("gyroX:", deviceMotion.rotationRate.x)
//        print("gyroY:", deviceMotion.rotationRate.y)
//        print("gyroZ:", deviceMotion.rotationRate.z)
//        print("gravityX:", deviceMotion.gravity.x)
//        print("gravityY:", deviceMotion.gravity.y)
//        print("gravityZ:", deviceMotion.gravity.z)
//        print("accX:", deviceMotion.userAcceleration.x)
//        print("accY:", deviceMotion.userAcceleration.y)
//        print("accZ:", deviceMotion.userAcceleration.z)
//    }
    
    
}

//
//  ViewController.swift
//  AccelerationProphecyMagicApp
//
//  Created by 小松真也 on 2020/06/04.
//  Copyright © 2020 小松真也. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController,GADBannerViewDelegate {
    
    // AdMob ID を入れる(GitにPushするときは消す！！)
    let AdMobID = ""
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //広告を表示する関数
        showAdBanner()
    }
    
    func showAdBanner(){
        
        let request: GADRequest = GADRequest();
        // リリース時には削除する！
//        request.testDevices = [ "d5f876be5a7bee3c807f4f6f26312e0d" ] // Sample device ID
        bannerView.adUnitID = AdMobID
        bannerView.rootViewController = self
        bannerView.delegate = self
        bannerView.load(request)
        
    }
    

}


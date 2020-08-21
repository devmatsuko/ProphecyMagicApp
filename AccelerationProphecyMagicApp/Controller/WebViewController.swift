//
//  WebViewController.swift
//  AccelerationProphecyMagicApp
//
//  Created by 小松真也 on 2020/08/21.
//  Copyright © 2020 小松真也. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class WebViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let youtubeView = YTPlayerView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height - 50))
        youtubeView.load(withVideoId: "AzreDeMm7og")
        view.addSubview(youtubeView)
    }
}

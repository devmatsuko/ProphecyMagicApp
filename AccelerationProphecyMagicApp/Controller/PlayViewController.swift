//
//  PlayViewController.swift
//  AccelerationProphecyMagicApp
//
//  Created by 小松真也 on 2020/06/07.
//  Copyright © 2020 小松真也. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {
    
    
    @IBOutlet weak var playImage: UIImageView!
    
    @IBOutlet weak var headLabel: UILabel!
    
    
    @IBOutlet weak var footLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        playImage.image = UIImage(named: "Trump")
        
        
    }

   
}

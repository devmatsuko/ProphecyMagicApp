//
//  SettingsViewController.swift
//  AccelerationProphecyMagicApp
//
//  Created by 小松真也 on 2020/06/05.
//  Copyright © 2020 小松真也. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var frontImage: UIImageView!
    @IBOutlet weak var rightImage: UIImageView!
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var backImage: UIImageView!
    
    
    var selectedImageString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        frontImage.image = UIImage(named: "Heart")
        rightImage.image = UIImage(named: "Club")
        leftImage.image = UIImage(named: "Spade")
        backImage.image = UIImage(named: "Diamond")
        
    }
    
    @IBAction func back(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }

}

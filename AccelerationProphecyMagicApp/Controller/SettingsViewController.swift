//
//  SettingsViewController.swift
//  AccelerationProphecyMagicApp
//
//  Created by 小松真也 on 2020/06/05.
//  Copyright © 2020 小松真也. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    var turnDirectionStringArray = ["↑","→","↓","←"]
    
    var cardImageStringArray = ["Heart","Club","Diamond","Spade"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .clear
        
    }
    
    @IBAction func back(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.size.height/4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.backgroundColor = .clear
        
        let turnDirectionLabel = cell.contentView.viewWithTag(1) as! UILabel
        turnDirectionLabel.text = turnDirectionStringArray[indexPath.row]
        turnDirectionLabel.textColor = .white
        
        
        let cardImage = cell.contentView.viewWithTag(2) as! UIImageView
        cardImage.image = UIImage(named: cardImageStringArray[indexPath.row])
        cardImage.frame = CGRect(x: cardImage.frame.origin.x, y: cardImage.frame.origin.y, width: cardImage.frame.size.width, height: cell.frame.size.height * 0.8)
        
        return cell
    }

}

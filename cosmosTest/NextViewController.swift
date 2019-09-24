//
//  NextViewController.swift
//  cosmosTest
//
//  Created by 宏輝 on 24/09/2019.
//  Copyright © 2019 Hiroki Kondo. All rights reserved.
//

import UIKit
import Cosmos

class NextViewController: UIViewController {
    
    var receiveCosmosRate:Double = 0
    
    
    @IBOutlet weak var cosmosView: CosmosView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cosmosView.rating = receiveCosmosRate
        cosmosView.settings.fillMode = .half
        cosmosView.settings.updateOnTouch = false
        
    }
    

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

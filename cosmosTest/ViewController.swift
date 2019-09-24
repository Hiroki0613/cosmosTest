//
//  ViewController.swift
//  cosmosTest
//
//  Created by 宏輝 on 24/09/2019.
//  Copyright © 2019 Hiroki Kondo. All rights reserved.
//

import UIKit
import Cosmos

class ViewController: UIViewController {
    
    //レートを一時的に保管
    var cosmosRating:Double = 0
    
    
    @IBOutlet weak var cosmosView: CosmosView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cosmosView.settings.fillMode = .half
        cosmosRatingChange()
        
        // Do any additional setup after loading the view.
    }
    

    func cosmosRatingChange(){
        
        // ビューから指を離した時に呼ばれる
        cosmosView.didFinishTouchingCosmos = { rating in
            
            //print("hirohiro")
            //print(rating)
        self.cosmosRating = rating
        }
    }
    
    
    @IBAction func goToNext(_ sender: Any) {
        
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        //レート値を次の画面へ、値を渡して画面遷移する
        nextVC.receiveCosmosRate = cosmosRating
    }
    


}


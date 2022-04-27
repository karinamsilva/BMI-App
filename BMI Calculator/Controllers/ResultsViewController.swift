//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by vpn on 12/07/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var imcValue : String?
    var advice : String?
    var color : UIColor?
    

    @IBOutlet weak var imcLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imcLabel.text = imcValue
        adviceLabel.text = advice
        view.backgroundColor = color

    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    
    }
}

//
//  ViewController.swift
//  tip
//
//  Created by Isha Arora on 23/08/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var Split: UITextField!
    @IBOutlet weak var People: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        // Calculate tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let split = Double(Split.text!) ?? 0
        let total = bill + tip
        let individual = (total/split)
        // Update the tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        People.text = String(format: "$%.2f", individual)
    
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       //self.view.backgroundColor = UIColor.blue
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        let start_color = UIColor.init(red: 76.0/255.0, green: 221.0/255.0, blue: 200.0/255.0,alpha: 1.0 )
        let end_color = UIColor.init(red: 90.0/255.0, green: 121.0/255.0, blue: 255.0/255.0,alpha: 1.0 )
        gradientLayer.colors = [start_color.cgColor, end_color.cgColor]
            self.view.layer.insertSublayer(gradientLayer, at: 0)

    }
    

}

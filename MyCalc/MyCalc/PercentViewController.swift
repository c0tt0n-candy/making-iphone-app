//
//  PercentViewController.swift
//  MyCalc
//
//  Created by Yutaka Okubo on 2019/01/04.
//  Copyright © 2019 Yutaka Okubo. All rights reserved.
//

import UIKit

class PercentViewController: UIViewController {

    @IBOutlet weak var percentField: UITextField!
    var price: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? ResultViewController {
            if let percentString = percentField.text {
                if let percentInt = Int(percentString) {
                    viewController.price = price
                    viewController.percent = percentInt
                }
            }
        }
    }

    @IBAction func tapNumberButton(_ sender: UIButton) {
        var percent: Int
        
        if let currentPercentString = percentField.text {
            if let currentPercentInt = Int(currentPercentString) {
                switch sender.currentTitle {
                case "0": percent = currentPercentInt * 10
                case "1": percent = currentPercentInt * 10 + 1
                case "2": percent = currentPercentInt * 10 + 2
                case "3": percent = currentPercentInt * 10 + 3
                case "4": percent = currentPercentInt * 10 + 4
                case "5": percent = currentPercentInt * 10 + 5
                case "6": percent = currentPercentInt * 10 + 6
                case "7": percent = currentPercentInt * 10 + 7
                case "8": percent = currentPercentInt * 10 + 8
                case "9": percent = currentPercentInt * 10 + 9
                default: percent = currentPercentInt
                }
            } else {
                percent = 0
            }
        } else {
            percent = 0
        }
        
        percentField.text = "\(percent)"
    }

    @IBAction func tapClearButton(_ sender: UIButton) {
        percentField.text = "0"
    }
}

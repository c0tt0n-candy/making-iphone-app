//
//  ViewController.swift
//  MyCalc
//
//  Created by Yutaka Okubo on 2019/01/03.
//  Copyright © 2019 Yutaka Okubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapNumberButton(_ sender: UIButton) {
        var price: Int
        
        if let currentPriceString = priceField.text {
            if let currentPriceInt = Int(currentPriceString) {
                switch sender.currentTitle {
                case "00": price = currentPriceInt * 100
                case "0": price = currentPriceInt * 10
                case "1": price = currentPriceInt * 10 + 1
                case "2": price = currentPriceInt * 10 + 2
                case "3": price = currentPriceInt * 10 + 3
                case "4": price = currentPriceInt * 10 + 4
                case "5": price = currentPriceInt * 10 + 5
                case "6": price = currentPriceInt * 10 + 6
                case "7": price = currentPriceInt * 10 + 7
                case "8": price = currentPriceInt * 10 + 8
                case "9": price = currentPriceInt * 10 + 9
                default: price = currentPriceInt
                }
            } else {
                price = 0
            }
        } else {
            price = 0
        }

        priceField.text = "\(price)"
    }

    @IBAction func tapClearButton(_ sender: UIButton) {
        priceField.text = "0"
    }

    @IBAction func restart(_ segue: UIStoryboardSegue) {
        priceField.text = "0"
    }
}

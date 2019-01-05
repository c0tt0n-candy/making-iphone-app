//
//  ResultViewController.swift
//  MyCalc
//
//  Created by Yutaka Okubo on 2019/01/04.
//  Copyright © 2019 Yutaka Okubo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultField: UITextField!
    var price: Int = 0
    var percent: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        let discountedPrice = calculate(price: price, percent: percent)
        resultField.text = "\(discountedPrice)"
    }

    private func calculate(price: Int, percent: Int) -> Int {
        let percentValue = Float(percent) / 100
        let discountPrice = Float(price) * percentValue
        return price - Int(discountPrice)
    }
}

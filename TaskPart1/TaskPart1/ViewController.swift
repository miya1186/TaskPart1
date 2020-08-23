//
//  ViewController.swift
//  TaskPart1
//
//  Created by miyazawaryohei on 2020/08/22.
//  Copyright © 2020 miya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //アクセスレベルをprivateにする
    @IBOutlet private var numTextField1: UITextField!
    @IBOutlet private var numTextField2: UITextField!
    @IBOutlet private var numTextField3: UITextField!
    @IBOutlet private var numTextField4: UITextField!
    @IBOutlet private var numTextField5: UITextField!
    @IBOutlet private var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func add(_ sender: Any) {
        let textArray :[String] = [
            numTextField1.text!,
            numTextField2.text!,
            numTextField3.text!,
            numTextField4.text!,
            numTextField5.text!
        ]
        
        let numArray = textArray.map({Int($0) ?? 0})
        let CalcResult = numArray.reduce(0){$0 + $1}
        resultLabel.text = String(CalcResult)
    }
}


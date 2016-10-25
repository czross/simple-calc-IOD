//
//  ViewController.swift
//  simple-calc
//
//  Created by Chris Ross on 10/24/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import UIKit

let calculator = Calc()

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numBtnInput(_ sender: UIButton) {
        calculator.nextDigit(input: Int.init(sender.titleLabel!.text!)!)
        resultLabel.text = calculator.retCurrentNum()
        
    }
    
    @IBAction func operationBtnInput(_ sender: UIButton) {
        calculator.setOper(operation: sender.titleLabel!.text!)
        resultLabel.text = calculator.retCurrentNum()
    }
    
    @IBAction func clearBtnInput(_ sender: UIButton) {
        calculator.clearAll()
        resultLabel.text = calculator.retCurrentNum()
    }
    
    @IBAction func enterBtnInput(_ sender: AnyObject) {
        calculator.setOper(operation: sender.titleLabel!?.text!)
        resultLabel.text = ("\(calculator.results)")
    }
    
    @IBAction func decimalBtnInput(_ sender: AnyObject) {
        calculator.setDecimal()
    }

}


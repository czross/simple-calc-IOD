//
//  calc-logic.swift
//  simple-calc
//
//  Created by Chris Ross on 10/24/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import Foundation

class Calc {
    var currentNum: Float
    var results: Float
    var currentOperator: String
    var count: Float
    
    init () {
        self.currentNum = 0.0
        self.results = 0.0
        self.currentOperator = "="
        self.count = 1
    }
    
    func nextDigit(input: Int) {
        self.currentNum = self.currentNum * 10 + Float.init(input)
    }
    
    func operate() {
        switch currentOperator {
        case "=" :
            self.results = self.currentNum
        case "+" :
            self.results += self.currentNum
        case "-" :
            self.results -= self.currentNum
        case "*" :
            self.results = self.results * self.currentNum
        case "/" :
            self.results = self.results / self.currentNum
        case "count":
            self.results = count
        case "avg":
            self.results = (self.results + self.currentNum) / self.count
        case "fact":
            for i in 1...Int.init(self.currentNum) {
                self.results += Float.init(i)
            }
        default :
            print("error")
        }
        
        self.currentNum = 0
    }
    
    func setOper(operation: String?) {
        operate()
        if (operation != nil) {
            self.currentOperator = operation!
            self.count += 1
        }
    }
    
    func clearAll() {
        self.currentNum = 0
        self.results = 0
        self.count = 0
        self.currentOperator = "="
    }
    

}


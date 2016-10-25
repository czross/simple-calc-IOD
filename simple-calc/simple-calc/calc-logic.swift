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
            print("entering fact")
            print(self.results)
            let top = Int.init(self.results)
            print(top)
            var counter = 1
            while(counter <= top) {
                self.results += Float.init(counter)
                counter += 1
                print(counter)
                print(self.results)
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
    
    func retCurrentNum() -> String{
        return String.init(self.currentNum)
    }
    

}


// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class tipclculator {
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    
    init(total:Double,taxPct:Double){
    self.total = total
    self.taxPct = taxPct
    subtotal = total / (taxPct + 1)
    }
    
    
    func calctipwithtippct(tipPct:Double)->Double {
        return subtotal * tipPct
    }
    
    func retornPassibleTip() -> [Int: Double]{
    let possibletipsinterferred = [0.15, 0.18, 0.20]
        let possibletipsexplicit:[Double] = [0.15, 0.18, 0.20]
        var number0ftrms = possibletipsinterferred.count
        
        var retval = [Int: Double]()
        for possibletip in possibletipsinterferred {
            let intPct = Int(possibletip*100)
            
            retval[intPct] = calctipwithtippct(possibletip)
        }
        func returnpossibletips() -> [Int: Double]{
            
            
            let possibletipsinterferred:[Double] = [0.15, 0.18, 0.20]
            
            var retval =Dictionary<Int, Double>()
            for possibletip in possibletipsinterferred{
                let intPct = Int(possibleyip*100)
                
                retval[intPct] = calctipwithtipct(possibletip)
            }
            return return
        }
    }

}
let tipcalc = tipclculator(total: 33.25, taxPct: 0.06)
tipcalc.retornPassibleTip()

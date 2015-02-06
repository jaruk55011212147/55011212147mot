//
//  TipCalculator.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import Foundation
class TipCalculator {
    var total: Double
    var taxPct: Double
    var subtotal: Double {
    
        get {
            return total / (taxPct + 1)
        }
    }
    init(total:Double,taxPct:Double){
        self.total = total
        self.taxPct = taxPct
    }


    func  calctipwithtippct(tipPct:Double)->Double {
        return subtotal * tipPct
    }

    func returnpossibletips() -> [Int: Double]{
        let possibletipsinterferred = [0.15, 0.18, 0.20]
        let possibleTipExplict:[Double] = [0.15, 0.18, 0.20]
    
        var retval = Dictionary<Int, Double>()
        for possibletip in possibletipsinterferred{
            let intPct = Int(possibletip*100)
            retval[intPct] = calctipwithtippct(possibletip)
        }
        return retval
    }

}




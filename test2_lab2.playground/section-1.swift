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
    
    func returnpossibletips() -> [Int: Double]{
        
        
        let possibletipsinterferred:[Double] = [0.15, 0.18, 0.20]
        let possibletipsExplicit:[Double]=[0.15 ,018, 0.20]
        var number0fitems = possibletipsinterferred.count
        
        var retval = Dictionary<Int, Double>()
        for possibletip in possibletipsinterferred{
            let intPct = Int(possibletip*100)
            
            retval[intPct] = calctipwithtippct(possibletip)
        }
        return retval
    }
    
}

let tipcalc = tipclculator(total: 33.25, taxPct: 0.06)
tipcalc.returnpossibletips()
 
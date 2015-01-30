// Playground - noun: a place where people can play

class Caculater {
    
    let num1:Double
    let num2:Double
    
    
    init (num1In:Double, num2In:Double ){
        self.num1=num1In
        self.num2=num2In
       
        
    }
    func cal(opa:String){
        switch (opa)  {
        case "+":
            let sum = Double(num1+num2)
            println("Your answer is \(num1 + num2)");
            break;
            
        case "-":
            println("Your answer is  \(num1 - num2)");
            break;
            
        case "/":
            println("Your answer is  \(num1 / num2)");
            break;
            
        case "*":
            println("Your asnwer is   \(num1 * num2)");
            break;
            
        default:
            println("Je ne sais pas");
            
        }

    }
    
    
}
let cu = Caculater(num1In:45.5,num2In:50.5)
cu.cal("*")

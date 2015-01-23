
class zoo {
    
    
  func zoo1() -> String {
        
         let animal = ["dog","cat","bat"]
        let food = ["vitgut","fisf","kill"]
    
        var feed: String = ""
        
        for(var i=0; i < animal.count ; i++){
            
               if(animal[i] == animal1){
                feed = food[i];
            }
            
        }
        return feed
    }
    
    let animal1:String
    
    init(animal: String){
        self.animal1 = animal
    }
    
}


let zoo2 = zoo(animal: "dog")
zoo2.zoo1()
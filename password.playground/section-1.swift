// Playground - noun: a place where people can play

import UIKit

class usernameTest{

var str = "Hello, playground"
    var username:String
    var password:String
    init(username:String,password:String){
        self.username = username
        self.password = password
    }
    func searchUsername() -> Bool{
        if (username=="Kakmote"){
            return true;
        }
        else{
            return false;
        }
    }
    func add(adduser:String,addpasswd:String){
    username[username]= addpasswd
    }
    func Del(del:String){
        username[del] = nil
        
    }
    func Edit(edit:String, passeedit:String){
        password[edit]=passeedit
    }
    
}
var user = usernameTest(username: "Kakmote", password: "motepentood");
user.searchUsername()
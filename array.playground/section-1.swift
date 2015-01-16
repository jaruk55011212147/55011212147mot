// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var shoppinglistExplicit = [String]()
shoppinglistExplicit = ["eggs","milk"]

var shoppingList = ["eggs","milk"]
println("The shopping list contains \(shoppingList.count) items.")
shoppingList.append("flour")
shoppingList += ["baking powder"]
shoppingList += ["chocolate spreat","cheesse","butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "six eggs"
shoppingList


let possibeTipsInferred = [0.15,0.18,0.20]
let possibleTipsExplicit:[Double] = [0.15,0.18,0.20]
var numberOfItems = possibeTipsInferred.count

var array1 = ["abc","bsc","cdf"]
for (var i=0; i < array1.c)
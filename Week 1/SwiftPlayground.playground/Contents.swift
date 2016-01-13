//: Playground - noun: a place where people can play
//Swift is a strongly typed language (to avoid debugging invalid assignments)

import UIKit

var str = "Hello, playground"
let label = 94
let explicitDouble: Double = 70
let wilabel = "The width is"
let width = 94
let widthLabel = wilabel + String(width)
let apples = 3
let appleSummary = "I have \(apples) apples."

//Optional strings
var optionalString: String? = "Hello"
print(optionalString)
print(optionalString!)

if let name=optionalString {
    print("Given string \(name)")
}

//Switch statement
let vegetable = "carrot"
switch(vegetable) {
    case "onion": print("Onion")
    case "carrot": print("It's a carrot")
    case "sprouts": print("Healthy option")
default: print("Not a specified veg")
}

//Dictionary
let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci":[1,1,2,3,5,8],
    "Square":[1,4,9,16,25],
]

var largest = 0
var largestNumKind: String?
for(kind,numbers) in interestingNumbers {
    for number in numbers {
        if largest<number {
            largest = number
            largestNumKind = kind
        }
    }
}

//Print kind of the largest number
print("Largest number in interesting numbers is \(largest) and is of kind \(largestNumKind!)")

//Use of ..< and ...
var loopNumber = 0
for i in 0..<4 {
    loopNumber += i
}
print("First loop result \(loopNumber)")

var secondLoopNumber = 0
for var i=0;i<4;++i{
    secondLoopNumber+=i
}
print("Second loop result \(secondLoopNumber)")


//functions in Swift
func greet(name: String, dailySpecial:String) -> String {
    print("Hello \(name) today's special is \(dailySpecial)")
    return "Hello \(name) today's special is \(dailySpecial)"
}
greet("Prasanthi",dailySpecial: "chicken biryani")








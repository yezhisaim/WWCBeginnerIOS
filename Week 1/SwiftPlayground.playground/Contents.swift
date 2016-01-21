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
var notOptionalString = "Hello"
var optionalString: String? = "Hello"
//notOptionalString = nil
optionalString = nil

//print(optionalString!)


if let name=optionalString {
    print("Given string \(name)")
}

//Switch statement
//let vegetable = "carrot"
//switch(vegetable) {
//    case "onion": print("Onion")
//    case "carrot": print("It's a carrot")
//    case "sprouts": print("Healthy option")
//default: print("Not a specified veg")
//}
//For Loop
for character in "Dog!🐶".characters {
    if (character == "🐶"){
        print("dog")}
    else{
        print(character)
    }
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


let myWidth = 94
let myString = "The width is \(myWidth)"
let widthLabel1 = myString + String(myWidth)
//let widthLabel1 = myString + myWidth

let myName = "Shirly"
var myAge = 22
let myLanguage: String = "Swift"
let height:Double = 68
let myIntro = "Hello, My name is \(myName)"
let valueOfFour: Float = 4

let firstName = "Shirly"
let middleName: String? = nil
let lastName = "Manor"

var greeting = "Hello!"
if let midName = middleName {
    greeting = "Hello \(firstName) \(midName) \(lastName)"
} else {
    greeting = "Hello \(firstName) \(lastName)"
}
print(greeting)

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

var n = 2
while n < 100 {
    n = n * 2
}
print(n)

var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)

var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
print(firstForLoop)

var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")
someInts = [] // SomeInts is empty now but what do you think is type? try to append string -> someInts.append("someString")
someInts.append(1)
var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]
var shoppingList = ["Eggs", "Milk"]
shoppingList += ["Flour"]
shoppingList.insert("Maple Syrup", atIndex: 1)
let mapleSyrup = shoppingList.removeAtIndex(1)

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin", "DUBf": "Dublindd"]

airports["LHR"] = "London"
// the airports dictionary now contains 3 items
airports["LHR"] = "London Heathrow"
// the value for "LHR" has been changed to "London Heathrow"
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
airports.removeValueForKey("DUB")
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
func sayHello(personName: String) -> String {
    let greeting = "Hello, " + personName + "!"
    return greeting
}












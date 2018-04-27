//: [Back to page 1 of 3 ...](@previous)
//: ## Functions & Closures
//:

func calculator(a: Int, b: Int) -> Int {
    return a + b
}

//: Call the `calculator()` function with 1 and 2
//: _(1 point)_
calculator(a: 1, b: 2)

//: Change `calculator` to return both a + b and a * b
//: _(2 points)_

func calculator(_ a: Int, b: Int) -> (Int, Int) {
    let math = a + b
    let mult = a*b
    return (math, mult)
}


//: Write a function `average()` to calculate the average value of an Integer array.
//: _(2 point)_
let emptyArray = [Int]()
let sum = emptyArray.reduce(0, +)
func average (aNumber: Int) -> Int {
    let lengthArray = emptyArray.count
    let avgArray = sum/lengthArray
    return avgArray
}



//: Write a function `greet` that takes an array of names (as strings) and a `greeter` function with signature String -> String, so that, for example, a call of `greet(["Alice", "Bob"], greeting: greeter)` prints "Hello, Alice!" and "Hello, Bob!".
//: _(6 points)_
func greet(person:String) -> String {
    let greeting = "Hello " + person + "!"
    return greeting
}
//: Use the map function on the following array of numbers to create an array of strings with the respective lengths.
//: _(2 points)_
let primeNumbers = [2, 3, 5, 7, 11, 13]
let numMap = primeNumbers.map {items in items * 1}
//print(numMap)
for item in numMap {
    let str = String(repeating: "a", count: Int(item))
    print(str)
}



//: Write a function `updateEntry` that receives an array of integers and a closure to change the value of each entry in the array to a new value.
//: _(5 points)_
//:

//: Use the following code to see whether your implementation works.
//: _(1 point)_
//:
//: `let results = updateEntry(primeNumbers) { $0 * $0 }`
//: `print(results)`

//: Create an enum of `TimeUnit` with appropriate values Second, Minute, Hour, Day and Week.
//: Add a method for converting between them, so that one could call:  `TimeUnit.Day.convertTo(TimeUnit.Hour) == 24.0`.
//: _(6 points)_

//: [To page 3 of 3 ...](@next)

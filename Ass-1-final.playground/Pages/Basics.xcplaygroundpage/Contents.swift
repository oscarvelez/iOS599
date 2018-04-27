//: [Back to Overview ...](@previous)
//:
//: ## Basics
//:
//: Declare a variable called 'string' that holds the value "This is my string!".
//: _(1 point)_
let string = "This is my string!"


//: Print the length of variable 'string'.
//: _(1 point)_
print(string.count)
//: Print the first character in 'string'.
//: _(1 point)_
let firstSpace = string.index(of: " ") ?? string.endIndex
let firstName = string[..<firstSpace]
print(firstName)
//: Print the 9th character in 'string'
//: _(1 point)_
let r = string.index(string.startIndex, offsetBy: 11)..<string.index(string.endIndex, offsetBy: -6)
let substring = string[r]
print(substring)
//: Print the first 4 characters in 'string'.
//: _(2 points)_
let a  = string.index(string.startIndex, offsetBy: 0)..<string.index(string.startIndex, offsetBy: 5)
let substringB = string[a]
print(substringB)
//: Print the last 5 characters in 'string'.
//: _(2 points)_
let b = string.index(string.startIndex, offsetBy:13 )..<string.index(string.endIndex, offsetBy: 0)
let substringC = string[b]
print(substringC)
//: Print the last 6 characters in 'string', but in reverse order.
//: _(2 points)_
let last6 = string.suffix(6)
let reversed = String(last6.characters.reversed())
print(reversed)
//: Print the 3rd word in 'string'.
//: _(2 point)_
let d = string.index(string.startIndex, offsetBy: 8)..<string.index(string.endIndex, offsetBy: -8)
let substringD = string[d]
print(substringD)
//: Create an array that contains "a", "b", "c", called 'myArray'.
//: _(1 point)_
let myArray = ["a","b","c"]
//: Get the length of 'myArray'.
//: _(1 point)_
myArray.count
//: Get the 2nd item in 'myArray'.
//: _(1 point)_
myArray[1]
//: Print "long" if the length of 'myArray' is more than 5, else print "short".
//: _(2 point)_
if (myArray.count > 5){
    print("large")
}
else {
    print("short")
}
//: Print each element in 'myArray' on a line by itself.
//: _(2 point)_
for item in myArray{
    print("\(item)")
}
//: Create a constant array called 'myStrings' that contains the strings: "these" "are" "my" "strings".
//: _(1 point)_
let myStrings = ["these", "are", "my", "strings"]
//: Print the index of "my" in 'myStrings', if it is in the array
//: _(2 point)_
for i in 0..<myStrings.count {
    if myStrings[i] == "my"{
        print(i)
    }
}
//: Print each key and value in the following dictionary. Sort your output alphabetically by the capital cities.
//: _(2 point)_
let capitals = ["Israel": "Jerusalem", "Germany": "Berlin", "France": "Paris", "England": "London", "Canada": "Ottawa"]
for (name, path) in capitals.sorted(by: <) {
    print("\(name)" ,"\(path)")
}
//: Add "a" to the value in the key "hello" in this dictionary. You can only add one line of code!
//: _(2 point)_
var someDictionary = ["hello": ["b", "c"]]


//: [To page 2 of 3 ...](@next)

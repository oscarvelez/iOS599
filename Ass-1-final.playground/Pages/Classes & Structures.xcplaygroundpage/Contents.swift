//: [Back to page 2 of 3 ...](@previous)

//: ## Classes and Structures
//:

//: Write a class `IntegerStack` that represents a stack of integers, with push() and pop() methods.
//: _(7 points)_

class IntegerStack {
    var stackItems = [Int]()
    func push(_ item: Int){
        stackItems.append(item)
    }
    
    func pop() -> Int {
        return stackItems.removeLast()
    }
 
}
 
//: Test your IntegerStack class to show that it works
let test = IntegerStack()
test.push(5)
test.push(10)
test.pop()

//test.pop()
//: Extend the `String` class to add the method `reverseWords()`. 
//:
//: You should then be able to get an output of `true` for the following input:
//:
//: `"mary had a little lamb".reverseWords() == "lamb little a had mary"`
//:
//: _(8 points)_
extension String {
    func reverseWords(word: String)-> String {
        var newString: String = ""
        var tempString: String = ""
        func joinBufferS() {
            if !tempString.isEmpty {
                let midS = newString.isEmpty ? "" : " "
                newString = tempString + midS + newString
                tempString = ""
            }
        }
        for items in word {
            if String(items) == " " {
                joinBufferS()
            } else {
                tempString += String(items)
            }
        }
        joinBufferS()
        return newString
 
 }
}
let test1 = String()
test1.reverseWords(word:"mary had a little lamb")
//: Add a subclass of Vehicle called Car which implements makeNoise()
//:
//: Car should be initializable like this:
//:
//: `let car = Car(seats: 5)`
//: `car.motionType == Vehicle.MotionType.Driving`
//:
//: _(9 points)_
class Vehicle {
    enum MotionType { case Driving, Flying, Sailing }
    
    let motionType: MotionType
    
    init(motionType: MotionType) {
        self.motionType = motionType
    }
    
    func makeNoise() {
        // Nothing here yet
    }
}
//cannot get code to run properly
class Car: Vehicle {
    
    init() {
        super.init(motionType: Vehicle.MotionType.Driving)
    }
    
    override func makeNoise() {
        print("toot toot")
    }
}


let ferrari = Car()
ferrari.motionType == Vehicle.MotionType.Driving
ferrari.makeNoise()

//: [You are done! Return to first page ...](Overview)

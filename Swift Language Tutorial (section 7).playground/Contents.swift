import UIKit

var myAge : Int = 24;
let myAgeinTenYears : Int = myAge + 10

let myName : String = "Robbie" // Constant (can't change value)
let myFullName = "\(myName) Allen"  // String Concat
print("HELLO \(myFullName)")

///////////////EXAMPLES FROM QUICK TUTORIAL/////////////////////////////
var optionalString: String? = "Hello"
print(optionalString == nil)
/////////////////////////////
var optionalName: String? = "me"
optionalName = "boo"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "\(greeting) \(name)"
}
//////////////////////////////
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
////////////////////////////////////////////
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
////////////////////////////////////
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13, 40],
    "Fibonacci": [1, 1, 2, 3, 5, 8, 55],
    "Square": [1, 4, 9, 16, 25, 53],
]

var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
//////////////////////////////
var n = 2
while n < 100 {
    n *= 2
}
print(n)
// Different way to do the while loop
var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

// Use the '..<' to make a range that omits the upper value and use '...' to include the upper value
var total = 0
for i in 0..<5 {
    total += i
}
print(total)

var total2 = 0
for i in 0...5 {
    total2 += i
}
print(total2)
//  FUNCTIONS   //
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet(person: "Robbie", day: "Tuesday"))

func myTest(_ name: String, on game: String) -> String{
    return "Good day \(name)! You like to play \(game)."
}
print(myTest("Robbie", on: "baseball"))

// Next
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print(returnFifteen())

/////////////////////////////////////////
// Class
class Square: NamedShape {
    var sideLength: Double
    var numberOfSides: Int
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

//////////////////////////////////////////
// Enums (similar to Class)
enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "Spades"
        case .hearts:
            return "Hearts"
        case .diamonds:
            return "Diamonds"
        case .clubs:
            return "Clubs"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()


enum ServerResponse {
    case result(String, String)
    case failure(String)
}
let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
}


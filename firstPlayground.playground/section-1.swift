println("Hello, world")

var myVariable = 42
myVariable = 50
let myConstant = 42

let explicitDouble: Double = 70
let explicitMuddle: Double = 1

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
//let fruitSummary = "I have \(apples + oranges) pieces of \u4003 fruit."
let named="Jonny"

let announcement = "Hello \u9000 \(named) \(2.0 + 1)"

var optionalString: String? = "Hello"
optionalString == nil

var optionalTree: String? = "Some Tree"

var optionalName: String? = "f"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let oak = optionalTree;
var birch = optionalTree

func tupple(name:String, specialMeal:String) -> String {
    return "Good day \(name), you can eat \(specialMeal)"
}

tupple("tom", "Fish")

func averageOf(numbers:Int...)->Int {
    var average:Int = 0
    var items = 0
    for number in numbers
    {
        average += number
        items   += 1
    }
    return average / items
    
}

let average = averageOf(1,2,3,4)

func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

var numbers = [20, 19, 7, 12]

numbers.map({ number in 3 * number })

class Shape {
    var numberOfSides = 0
    let dimensions = 3
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    func split(pieces: Int) {
        // splits shape into pieces pieces
    }
}

var shape = Shape()



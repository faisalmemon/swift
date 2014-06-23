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

shape.numberOfSides=7
var shapeDescription = shape.simpleDescription()

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Circle : NamedShape {
    var radius : Double
    
    init(radius: Double, name:String)
    {
        self.radius = radius
        super.init(name:name)
    }
    
    func area()->Double
    {
        return radius * radius * 3.1415926;
    }
    
    override func simpleDescription() -> String
    {
        return "A circle with radius \(radius)"
    }
}

var circle = Circle(radius:3e10, name:"Big circle")
var areaOfCircle = circle.area()

var optionalCircle : Circle?

optionalCircle = Circle(radius: 1e2, name: "100 Circle")
let name = optionalCircle?.name

optionalCircle = nil

let otherName = optionalCircle?.name

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
        }
    }
    
    func equalTo(other:Rank) -> Bool
    {
        if (self.toRaw() == other.toRaw())
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.toRaw()

let nameOfAce:String = ace.simpleDescription()

let selfcompare = ace.equalTo(ace)

let dud = Rank.Two

let anothercompare = ace.equalTo(dud)

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    func color() ->String
    {
        switch self {
        case .Spades, .Clubs:
            return "black"
        default:
            return "red"
        }
    }
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()
let colorOfCard = hearts.color()


protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

extension Int: ExampleProtocol {
    var simpleDescription: String {
    return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
7.simpleDescription
var a:Int = 7
a.adjust()


protocol AbsoluteValue {
    var absoluteValue: Double {get}
}

extension Double:AbsoluteValue {
    var absoluteValue: Double {
        if (self < 0)
        {
            return -self;
        }
            else
        {
            return self;
            }
    }
}

var b:Double = -333.4
b.absoluteValue

var t = 0x10
var tt = 0o10
var c = 5

let dog: Character = "🐶"
let cow: Character = "🐮"
let dogCow = dog + cow





















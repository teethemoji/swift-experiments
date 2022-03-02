import Cocoa

var greeting = "Hello, playground"
// This data is editable
greeting = "안녕하세요"

let constantData = "I won't change"
//

print(greeting)
print(constantData)

// To store multi-line strings...
let title = """
A day in
the life of an
Apple engineer
"""

print(title)
let titleLength = title.count
print(titleLength)
print(title.uppercased())
// 대문자화
print(title.hasPrefix("A day"))
// "A day"로 시작하는지?
print(title.hasSuffix(".jpg"))
// ".jpg"로 끝나는지?

let score       = 10
let reallyBig   = 100000000
// You can use underscores, _, to break up numbers however you want
let reallyBig2  = 100_000_000
// Swift doesn't actually care about the underscores, so if you wanted you could write this instead:
let reallyBig3  = 1_00__00___00____00
// The end result is the same: reallyBig gets set to an integer with the value of 100,000,000.

let someNum = 120
print(someNum.isMultiple(of: 3))

let a = 1
let b = 2.0
// a는 integer이고 b는 double 이므로, a + b를 하려고 하면 type safety로 인해 스위프트는 이 둘을 섞지 못하게 한다
let c = a + Int(b)
// 또는 let c = Double(a) + b 할 수도 있다

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1    = 3

var name = "Nicolas Cage"
// name  = 62
// 는 불가능하다. Type Safety

var rating = 5.0
rating *= 2

// Many older APIs use a slightly different way of storing decimal numbers, called CGFloat. Fortunately, Swift lets us use regular Double numbers everywhere a CGFloat is expected so although you will see CGFloat appear from time to time you cna just ignore it

// Incase you were curious, the reason floating-point numbers are complex is because computers are trying to use binary to store complicated numbers. For example, if you divide 1 by 3 we know you get 1/3, but that can't be stored in binary so the system is designed to create very close appreoximations It's extremely efficient, and the error is so small it's usually irrelevant, but at least you know why Swift doesn't let us mix Int and Double by accident!

var switchValue = false
switchValue.toggle()
// It will toggle boolean value to opposite value
print(switchValue)

// How to join strings together
let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

let firstName = "Taylor"
let age = 26
let message = "Hello, my name is \(firstName) and I'm \(age) years old."
print(message)

// 이런 것도 가능~
print("5 X 5 is \(5*5)")

let numberOfEggs = 12
print("There is " + String(numberOfEggs) + " eggs on the table.")
print("There is \(numberOfEggs) eggs on the table.")

// Challenge!
// Celsius to Fahrenheit

// Create a constant holding any temperature in Celsius
let temperatureC = 20

// Convert it to Farenheit by multiplying by 9, divide by 5, then add 32
let temperatureF = ((temperatureC * 9) / 5) + 32

// Print the result for the user, show both Celsius and Fahrenheit values.
print("Celsius -> \(temperatureC)°\nFahrenheit -> \(temperatureF)°F")

// How to store ordered data in arrays

var fruits          = ["Apple", "Blueberry", "Orange", "Lemon"]
let numbers         = [4, 6, 12, 16, 24]
var temperatures    = [25.3, 28.2, 26.4]

print(fruits[0])
print(numbers[1])
print(temperatures[2])

fruits.append("Strawberry")
// numbers.append(32)
temperatures.append(12.0)

var albums = Array<String>()
albums.append("A is Apple")
albums.append("B is Bee")

var songs = [String]()
songs.append("1000 hours")
songs.append("Still with you")

print(albums.count)
print(songs.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))
// prints false

let cities = ["London", "Seoul", "Tokyo", "Rome"]
print(cities.sorted())
// returns a new array with its items sorted in ascending order, which means alphabetically for strings but numerically for numbers - the original array remains unchanged

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)

// When you reverse an array, Swift is very clever - it doesn't actually do the work of rearranging all the items, but instead just remembers to itself that you want the items to be reversed. So, when you print out reversedPresidents, don't be surprised to see it's not just a simple array anymore!

// How to store and find data in dictionaries

let employee1 = [
    "name"      : "Bob",
    "job"       : "Builder",
    "location"  : "California"
]

// Swift provides an alternative : when you access data inside a dictionary, it will tell us "you might get a value back, but you might get back nothing at all." Swift calls these optionals because the existence of data is optional - it might be there or it might not. Swift will even warn you when you write the code, albeit in a rather obscure way - it will say "Expression implicitly coerced from 'String?' to 'Any'", but it will really mean "this data might not actually be there - are you sure you want to print it?"

// Optionals are a preetty complex issue that we'll be covering in detail later on, but for now I'll how you a simpler approach: when reading from a dictionary, you can provide a default value to use if the key doesn't exist.

print(employee1["name", default: "Unknown"])
print(employee1["job", default: "Unknown"])
print(employee1["location", default: "Unknown"])

var foodCombination = [String: String]()
foodCombination["Pizza"] = "Coke"
foodCombination["치킨"] = "맥주"
foodCombination["매운떡볶이"] = "쿨피스"

// How to use sets for fast data lookup

// So far you've learned about two ways of collecting data in Swift: arrays and dictionaries. There is a thired very common way to group data, called a set - they are similar to arrays, except you can't add duplicate items, and they don't store their items in a particular order.
// Creating a set works much like creating an array: tell Swift what kind of data it will store, then go ahead and add things. There are two important differences, though, and they are best demonstrated using some code.

var famousPeople = Set(["Ariana", "Beyonce", "Katy"])

// Notice how that actually creates an array first, then puts that array into the set? That's intentional, and it's the standard way of creating a set from fixed data. Remember, the set will automatically remove any duplicate values, and it won't remember the exact order that was used in the array.

print(famousPeople)

famousPeople.insert("Meryl")
famousPeople.insert("Dua")

// How to create and use enums

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

// enum Weekday {   case monday, tuesday, wednesday, thursday, friday   }도 가능합니다.

var day = Weekday.tuesday
day     = Weekday.monday
day     = .friday

// How to use type annotations
let surname:    String      = "Lasso"
var zero:       Int         = 0
var numberZero: Double      = 0

var user    : [String: String] = ["id": "@username"]
var books   : Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])
var soda : [String] = ["Coke", "Pepsi", "Irn-Bru"]

var teams = [String]()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

// Checkpoint2
// Create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

var arrayOfStrings = Set(["My", "Me", "Mine"])

var numberOfStringsThatStartsWithM = arrayOfStrings.count

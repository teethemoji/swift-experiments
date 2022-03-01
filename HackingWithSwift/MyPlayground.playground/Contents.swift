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

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

// How to check a condition is true or false
var someCondition = true

if someCondition {
    print("Do something")
    print("Do something else")
    print("Do a third thing")
}

if 100 > 0 {
    print("Of course 100 is bigger than 0")
}

var userID = "KiriCreamCheese"
// If `userID` contains an empty string
if userID == "" {
    // Make it equal to "Anonymous"
    userID = "Anonymous"
}
// Now print a welcome message
print("Welcome, \(userID)!")

// Or you could do
if userID.isEmpty == true {
    userID = "Anonymous"
}

var isLoggedIn = true

if isLoggedIn && !userID.isEmpty {
    print("You need to log in to proceed")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

// How to use switch statements to check multiple conditions
enum Weather {
    case sun, rain, wind, snow, cloud, unknown
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
default:
    print("Hmm...")
}

// The Twelve Days of Christmas

let theDay = 5
print("My true love gave to me...")

switch theDay {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A patridge in a pear tree")
}

// Swift checks its cases in order and runs the first one that matches. If you place default before any other case, that case is useless because it will never be matched and Swift will refuse to build your code
// If you explicitly want Swift to carry on executing subsequent cases, use falthrough. This is not commonly used, but sometimes - just sometimes - it can help you avoid repeating work.

// How to use the ternary conditional operator for quick tests

var myAge = 18
let canVote = myAge >= 18 ? "Yes" : "No"
// When code runs, canVote will be set to "Yes" because age is set to 18

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

let crewMember = ["Jayne", "Kaylee", "Mal"]
let crewCount = crewMember.isEmpty ? "No one" : "\(crewMember.count) people"
print(crewCount)
 
enum ColorTheme {
    case light, dark
}

let colorTheme = ColorTheme.dark

let backgroundColor = colorTheme == .dark ? "black" : "white"
print(backgroundColor)

// How to use a for loop to repeat work
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}
// 'os' could be 'rubberChicken', 'name' ... anything.

for i in 1...12 {
    print("5 X \(i) is \(5 * i)")
}
// for(int i = 1; i <= 12; i++)
// 1부터 12까지! 반복!

// Swift has a similar but different type of range that counts up to but excluding the final number: ..<
for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

for num in 0..<platforms.count {
    print(platforms[num])
}
// 이런 식으로 array에 쓰기 적합하다

var ShakeItOffLyric = "Haters gonna"

for _ in 1...5 {
    ShakeItOffLyric += " hate"
}

var countdown = 10

while countdown > 0 {
    print("\(countdown)")
    countdown -= 1
}
print("Blast off!")

let randomID = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

let filenames = ["me.jpg", "work.txt", "capture.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}
print(multiples)

// Summary: Conditions and loops
// Checkpoint3

// fizz buzz
for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}

// How to reuse code with functions

let roll = Int.random(in: 1...20)

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")    }
}

printTimesTables(number: 5, end: 20)

// parameter == placeholder
// argument == actual value

let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}

// 이걸 이렇게도 가능합니다

func areLettersIdenticalVer2(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

func rollDiceVer2() -> Int {
    Int.random(in:1...6)
}

func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let LineC = pythagoras(a: 3, b: 4)
print(LineC)

// 더 단순한 코드로는
func pythagorasVer2(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

// How to return multiple values from functions
// If you want to return two or more values from a function, you could use an array. For example, here's one that sends back a user's details:
func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let userData = getUser()
print("Name: \(userData[0]) \(userData[1])")

// That's problematic, because it's hard to remember what userData[0] and userData[1] are, and if ever adjust the data in that array then user[0] and user[1] could end up being something else or perhaps not existing at all.

// We could use a dictionary instead, but that has its own problems:
func getUserDictionary() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName" : "Swift"
    ]
}

let userData2 = getUserDictionary()
print("Name: \(userData2["firstName", default: "Anonymous"]) \(userData2["lastName", default: "Nothing"])")

// Like arrays, dictionaries, and sets, tuples let us put multiple pieces of data into a single variable, but unlike those other options tuples have a fixed size and can have a variety of data types.

func getUserTuple() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}
let userDataTuple = getUserTuple()
print("Name: \(userDataTuple.firstName) \(userDataTuple.lastName)")

// 이런 식으로도 가능

func getUserTupleVer2() -> (String, String) {
    ("Taylor", "Swift")
}

let userDataTupleVer2 = getUserTupleVer2()
print("Name: \(userDataTupleVer2.0) \(userDataTupleVer2.1)")

// How to customize parameter labels
func rollDiceVer3(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()
    
    // Roll as many dice as needed
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    // Send back all the rolls
    return rolls
}

let rolls = rollDiceVer3(sides: 6, count: 4)

func hireEmployee(name: String) {}
func hireEmployee(title: String) {}
func hireEmployee(location: String) {}

// Yes, those are all functions called hireEmployee(), but when you call them Swift knows which one you mean based on the parameter names you provide. To distinguish between the various options, it's very common to see documentation refer to each function including its parameters, like this: hireEmployee(name: ) or hireEmployee(title: ).

// Sometimes, though, these parameter names are less helpful, and there are two ways I want to look at.
// First, think about the hasPrefix() function you learned earlier:

let lyricRed = "I see a red door and I want it painted black"
print(lyricRed.hasPrefix("I see"))

// When we call hasPrefix() we pass in the prefix to check for directly - we don't say hasPrefix(String: ) or, worse, hasPrefix(prefix: ). How come?
// Well, when we're defining the parameters for a function we can actually add two names: one for use where the function is called, and one for use inside the function itself. hasPrefix() uses this to specify _ as the external name for its parameter, which is Swift's way of saying "ignore this" and causes there to be no external label for that parameter.
// We can use the same technique in our own functions, if you think it reads better. For example, previously we had this function:
func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let resultForString = isUppercase(string: string)

// This is used a lot in Swift, such as with append() to add items to an array, or contains() to check whether an item is inside an array - in both places it's pretty evident what the parameter is without having a label too.

// The second problem with external parameter names is when they aren't quite right - you want to have them, so _ isn't a good idea, but they just don't read naturally at the function's call site.
// As an example, here's another function we looked at earlier:
func printTimesTablesVer2(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTablesVer2(number: 5)
// That code is valid Swift, and we could leave it alone as it is. But the call site doesn't read well: printTimesTables(number: 5). It would be much better like this:
func printTimeTablesVer3(for: Int) {
    for i in 1...12 {
        print("\(i) x \(for) is \(i * for)")
    }
}
// That reads much better at the call site - you can literally say "print times table for 5" aloud, and it makes sencse. But now we have invalid Swift: although for is allowed and reads great at the call site, it's not allowed inside the function.
// You already saw how we can put _ before the parameter name so that we don't need to write an external parameter name. Well, the other option is to write a second name there: one to use externally, and one to use internally.
func printTimeTablesVer4(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
// There are three things in there you need to look at closely:
// 1. We write for number: Int:the external name is for, the internal name is number, and it's of type Int.
// 2. When we call the function we use the external name for the parameter: printTimesTables(for: 5)
// 3. Inside the function we use the internal name for the parameter: print("\(i) x \(number) is \(i * number)")
// So, Swift gives us two important ways to control parameter names: wecan use _ for the external parameter name so that it doesn't get used, or add a second name there so that we have both external and internal parameter names.
// Tip: Earlier I mentioned that technically values you pass in to a function are called "arguments", and values you receive inside the function are call parameters. This is where things get a bit muddled, because now we have argumen labels and parameter names side by side, both in the function definition. Like I said, I'll be using the term "parameter" for both, and when the distinction matters you'll see I distinguish between them using "external parameter name" and "internal parameter name".

// How to provide default values for parameters
func printTimesTablesVer5(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}
// 이렇게 하면 printTimesTables(for: 8)이런식으로 end 값을 안 넘겨주어도 자동으로 12로 적용되어서 진행된다
// How to handle erros in functions
// Things go wrong all the time, such as when that file you wanted to read doesn't exist, or when that data you tried to download failed because the network was down. If we didn't handle errors gracefully then our code would crash, so Swift makes us handle erros - or at least acknowledge when they might happen.

// This makes three steps:
// 1. Telling Swift about the possible erros that can happen
// 2. Writing a function that can flag up erros if they happeen.
// 3. Calling that function, and handling any erros that might happen.

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// 1. If a function is able to throw errors without handling them itself, you must makr the function as throws before the return type.
// 2. We don't specify exactly what kind of error is thrown by the function, just that it can throw errors.
// 3. Being marked with throws does not mean the function must throw errors, only that it might.
// 4. When it comes time to throw an error, we write throw followed by one of our PasswordError cases. This immediately exits the function, meaning that it won't return a string.
// 5. If no errors are thrown, the function must behave like normal - it needs to return a string

// The final step is to run the function and handle any erros that might happen. Swift Playgrounds are pretty lax about error handling because they are mostly meant for learning, but when it comes to working with real Swift projects you'll find there are three steps:
// 1. Starting a block of work that might throw errors, using do.
// 2. Calling one or more throwing functions, using try.
// 3. Handling any thrown errors using catch.

// In pseudocode, it looks like this:
/*
 do {
    try someRiskyWork()
} catch {
    print("Handle errors here")
}
*/
// If we wanted to write try that using our current checkPassword() function, we could write this:
let randomString = "12345"

do {
    let randomResult = try checkPassword(string)
    print("Password rating: \(randomResult)")
} catch {
    print("There was an error.")
}

// If the checkPassword() function works correctly, it will return a value into result, which is then printed out. But if any errors are thrown (which in this case there will be), the password rating message will never be printed - execution will immediately jump to the catch block.
// There are a few different parts of that code that deserve discussion, but i want to focus on the most important one: try. This must be written before calling all functions that might throw erros, and is a visual signal to developers that regular code execution will be interrupted if an error happens.
// When you use try, you need to be inside a do block, and make sure you have one or more catch blocks able to handle any erros. In some circumstances you can use an alternative written as try! which does not require do and catch, but will crash your code if an error is thrown - you should use this rarely, and only if you're absolutely sure an error cannot be thrown.
// When it comes to catching errors, you must always have a catch block that is able to handle every kind of error. However, you can also catch specific erros as well, if you want:
let someString = "12345"

do {
    let someResult = try checkPassword(string)
    print("Password rating: \(someResult)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage...")
} catch {
    print("There was an error.")
}

// As you progress you'll see how throwing functions are baked into many of Apple's own frameworks, so even though you might not create them yourself much will at least need to know how to use them safely.
// Tip: Most erros thrown by Apple provide a meaningful message that you can present to your user if needed. Swift makes this available using an error value that's automatically provided inside your catch block, and it's common to read error.localizedDescription to see exactly what happend.

// Summary: Functions


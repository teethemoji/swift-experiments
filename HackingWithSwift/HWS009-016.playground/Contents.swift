import Cocoa

// How to create and use closures
/*
 Functions are powerful things in Swift. Yes, you've seen how you can call them, pass in values, and return data, but you can also assign them to variables, pass functions into functions, and even return functions from functions.
 */

func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()

/*
 That creates a trivial function and calls it, but then creates a copy of that function and calls the copy. As a result, it will print the same message twice.
 
 Important: When you're copying a function, you don't write the parentheses after it - it's var greetCopy = greetUser and not var greetCopy = greetUser(). If you put the parentheses there you are calling the function and assigning it's value back to something else.
 But what if you wanted to skip creating a separate function, and just assign the functionality directly to a constant or variable? Well, it turns out you can do that too:
*/

let sayHello = {
    print("Hi there")
}

sayHello()

/*
 Swift gives this the grandiose name closure expression, which is a fancy way of saying we just created a closure - a chunk of code we can pass around and call whenever we want. This one doesn't have a name, but otherwise it's effectively a function that takes no parameters and doesn't return a value.
 If you want the closure to accept parameters, they need to be written in a special way. You see, the closure starts and ends with the braces,which means we can't put code outside those braces to control parameters or return value. So, Swift has a neat workaround: we can put that same information inside the braces, like this:
 */

let greetUsername = { (name: String) -> String in "Hi \(name)!"}

/*
 I added an extra keyword there - did you spot it? It's the in keyword and it comes directly after the parameters and return type of the closure. Again, with a regular function the parameters and return type would come outside the braces, but we can't do that with closures. So, in is used to mark the end of the parameters and return type - everything after that is the body of the closure itself. There's a reason for this, and you'll see it for yourself soon enough.
 In the meantime, you might have a more fundamental question: "Why would I ever need these things?" I know, closures do seem awfully obscure. Worse, they seem obscure and complicated - many, many people really struggle with closures when they first meet them, because they are complex beasts and seem like they are never going to be useful.
 However, as you'll see this gets used extensively in Swift, and almost everywhere in SwiftUI. Seriously, you'll use them in every SwiftUI app you write, sometimes hundreds of times - maybe not necessarily in the form you see above, but you're going to be using it alot.
 To get an idea of why closures are so useful, I first want to introduce you to function types. You've seen how integers have the type Int, and decimals have the type Double, etc, and now I want you to think about how functions have types too.
 Let's take the greetUser() function we wrote earlier: it accepts no parameters, returns no value, and does not throw errors. If we were to write that as a type annotation for greetCopy, we'd write this:
 */

var greetCopy2: () -> Void = greetUser

/*
 Let's break that down...
 
 1. The empty parentheses marks a function that takes no parameters.
 2. The arrow means just what it means when creating a functions: we're about to declare the return type for the function.
 3. Void means "nothing" - this function returns nothing. Sometimes you might see this written as (), but we usually avoid that because it can be confused with the empty parameter list.
 
 Every function's type depends on the data it receives and sends back. That might sound simple, but it hides an important catch: the names of the data it receives are not part of the function's type.
 
We can demonstrate this with some more code:
 */

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

/*
 That starts off easily enough: it's a function that accepts an integer and returns a string. But when we take a copy of the function the type of function doesn't include the for externalparameter name, so when the copy is called we use data(1989) rather than data(for:1989).
 */

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}

/*
 So, if the first name is Suzanne, return true so that name1 is sorted before name2. Onthe other hand if name2 is Suzanne, return false so that name1 is sorted after name2. If neither name is Suzanne, just use < to do a normal alphabetical sort.
 Like I said, sorted() can be passed a function to create a custom sort order, and as long as that function a) accepts two strings, and b) returns a Boolean, sorted() can use it.
 */

// How to use trailing closures and shorthand syntax

let team = ["Gloria", "Suzanne", "Piper", "Tiffany"]
let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})

print(captainFirstTeam)

/*
 If you remember, sorted() can accept any kind of function to do custom sorting, with one rule: that function must accept two items from the array in question (that's two strings here), and return a Boolean set to true if the first string should be sorted before the second.
 To be clear, the function must behave like that - if it returned nothing or if it only accepted one string, then Swift would refuse to build our code.
 Think it through: in this code, the function we provide to sorted() must provide two strings and return a Boolean, so why do we need to repeat ourselves in our closure?
 The answer is: we don't. We don't need to specify the types of our two parameters because they must be strings, and we don't need to specify a return type because it must be a Boolean. So, we can rewrite the code to this:
 
 let captainFirstTeam = team.sorted(by: { name1, name2 in
 
 That's already reduced the amount of clutter in the code, but we can go a step further: when one function accepts another as its parameter, like sorted() does, Swift allows special syntax called trailing closure syntax. It looks like this:
 
 let captainFirstTeam = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
 }
 
 */

// How to accept functions as parameters

/*
 There's one last closure-related topic I want to look at, which is how to write functions that accept other functions as parameters. This is particularly important for closures because of trailing closure syntax, but it's a useful skill to have regardless.
 
 Previously we looked at this code:
 
 func greetUser() {
    print("Hi there!")
 }
 
 greetUser()
 
 var greetCopy: () -> Void = greetUser
 greetyCopy()
 
 I've added the type annotation in there intentionally, because that's exactly what we use when specifying functions as parameters: we tell Swift what parameters the function accepts, asa well its return type.
 
 Once again, brace yourself: the syntax for this is a little hard on the eyes at first! Here's a function that generate an array of integers by repeating a function a certain number of times:
 */

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

/*
 1. The function is called makeArray(). It takes two parameters, one of which is the numbers of integers we want, and also returns an array of integers.
 2. The second parameter is a function. This accepts no parameters itself, but will return on integer everytime it's called.
 3. Inside makeArray() we create a new empty array of integer, then loop as many times as requested.
 4. Each time the loop goes around we call the generator function that was passed in as a parameter. This will return one new integer, so we put that into the numbers array.
 5. Finally the finished array in returned.
 
 The body of the makeArray() is mostly straightforward: repeatedly call a function to generate an integer, adding each value to an array, then send it all back.
 */

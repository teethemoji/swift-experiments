// Comparable

struct Employee : Equatable, Comparable {
	var firstName:	String
	var lastName:	String
	var jobTitle:	String
	var phoneNumber:String

	static func < (lhs: Employee, rhs: Employee) -> Bool {
		return lhs.lastName < rhs.lastName
	}
}

// You can then use the sorted(by:) function to return the array of employees sorted by last name:

let employees = [employee1, employee2, employee3, employee4, employee5]

let sortedEmployees = employees.sorted(by: <)

for employee in sortedEmployees {
	print(employee)
}

// Swift will let you use both the == operator and the < operator that you defined for the Equatable and Comparable protocols to provide functionality for the !=, <=, >, and >= operators as well

// Codable

struct Employee: Equatable, Comparable, Codable {
	var firstName:	String
	var lastName:	String
	var jobTitle:	String
	var phoneNumber:String

	static func < (lhs: Employee, rhs: Employee) -> Bool {
		return lhs.lastName < rhs.lastName
	}
}

// This lets an Encoder or Decoder object know that your type has all of the information it needs to be able to encode your object to or decode it from a certain data format.
// Take JSONEncoder as an example. The JOSN data format, commonly used when working with web services, is essentially a list of key/value pairs that represent information. A JSONEncoder can convert an object conforming to Codable to JSON, which can then easily be encoded as Data or displayed as a String showing the list of key/value pairs.
// The encode(_:) method on JSONEncoder is a throwing function -- a special type of Swift function that can return specific types of erros. You'll see the try? syntax, which allows the function to return an optional value, in the following sample code. If there's no error, the optional will hold the expected value; if there is an error, the optional will be nil, You'll learn more about try? in another lesson. If you get an error saying "Use of unresolved identifier JSONEncoder", make sure you import Foundation, the framework in which JSONEncoder is defined.

import Foundation

let ben = Employee(firstName: "Ben", lastName: "Stott", jobTitle: "Front Desk", phoneNumber: "415-555-7767")

let jsonEncoder = JOSONEncoder()
if let jsonData = try? jsonEncoder.encode(ben),
	let jsonString = String(data: jsonData, encoding: .utf8) {
		print(jsonString)
	}

{"firstName":"Ben","lastName":"Stott","jobTitle":"Front Desk","phoneNumber":"415-555-7767"}
// By using Codable, you can easily convert your app's information to and from a variety of formats. The Codable protocol will come in handy in future lessons when tou are saving user data or working with web services.

// Creating a Protocol
// You've learned about four protocols defined in the Swift standard library, but you can also write your own protocols.
// Remember how to define structures, classes, and enumerations? You define a protocol in a very similar  way. Use the protocol keyword followed by the name you want to use, and then define the requirements in a set of curly braces.
// When requiring a property. you must define whether the property is read-onluy or read/write. Read-only means you can get the variable, but you can't set it. Read/write menas you can both get and set the value. If a property is read-only, you can implement it using a computed property. If it's read/write, it should be a regular property.
// When requiring a method, you need to specify the name, parameters, and return type of the method.
// The following code defineds a FullyNamed protocol that requires a fullName property and a sayFullName() method. You can see that it looks similar to a type definition

protocol FullyNamed(){
	var fullName: String { get }

	func sayFullName()
}

// Just like the Swift protocols earlier in this lesson, your types can then adopt the protocol by addign a colon and appending the name of the protocol

struct Person: FullyNamed {
	var firstName:	String
	var lastName:	String
}

// The compiler recognizeds that the Person struct has adopted the protocol, but also recognizes that the struct doewn't yet meet the protocol's requirements. If you adopt a protocol but don't meet its requirements, you won't be able to build or run your code until you address the error.
// Notice how simple it is to conform to the protocol in the following code. The Person struct is updated with a fullyNamed computed property and a sayFullName() function that prints the full name to the console.

struct Person: FullyNamed {
	var firstName:	String
	var lastName:	String

	var fullName: String {
		return "\(firstName) \(lastName)"
	}

	func sayFullName() {
		print(fullName)
	}
}

// You may havve noticed that the syntax for adopting a protocol is similar to the syntax for declaring a subclass. That's not coincidental. Protocols and class inheritance are two ways to adopt a shared set of properties and functionality. In fact, you can use a protocol to provide a default implementation, just as a class can inherit an implementation from a superclass. You'll learn more about protocols and default implementations as you learn more about Swift.
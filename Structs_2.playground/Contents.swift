import UIKit

//Structs can have initial default values

//In this example we must set a default value after creating our struct

struct User {
    var username: String
}

var user = User(username: "Johnny Cash")

//Alternatively we can create a struct with a default name

struct AnonymousUser {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

// Inside Struct methods we refer to the struct currently being used as "self"

//This self value is particularly useful when you create initializers that have the same parameter names as your property.

struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

//Access Control lets you restrict which code can use properties and methods
//Using the private keyword means a block or line of code can only be read form inside the struct

struct PrivatePerson {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}



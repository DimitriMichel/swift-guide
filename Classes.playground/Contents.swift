import UIKit

// Classes and Structs appear similar but there are some key differences

//Classes never come with a memberwise initializer so you must create one

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

/*Classes don't have initializers because they would be hard to work with ue to class inheritance**/
// The Poodle class below inherits all the properties and methods of the parent class above "Dog"


class Poodle: Dog {
    init(name: String) {
        //Swift makes us call super.init when refering to the parent class for safety
        super.init(name: name, breed: "Poodle")
    }
}

//Final Classes cannot be inherited from. This means methods cannot be overwritten.

final class Cat {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}



// Another difference between Classes and Structs are "Deinitializers"
// A "Deinitializer" is code that gets run when the class is destroyed

class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}


for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

//The final difference between structs and classes is mutability.
//Since structs are constants their properties cant be changed but in classes the can.

class Singer {
    var name = "Taylor Swift"
}

let mutantTaylor = Singer()
mutantTaylor.name = "Ed Sheeran"
print(mutantTaylor.name)

//To stop this mutability from happening simply make it a constant

class ImmutableSinger {
    let name = "Taylor Swift"
}
let immutableTaylor = ImmutableSinger()
immutableTaylor.name = "Ed Sheeran" //This wont work as name is now a constant

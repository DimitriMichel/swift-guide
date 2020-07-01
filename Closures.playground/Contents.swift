import UIKit


/*Closure**/

/*
 
Swift lets us use functions just like any other type such as strings and integers. This means you can create a function and assign it to a variable, call that function using that variable, and even pass that function into other functions as parameters.
 
*/


let driving = {
    print("I'm driving right now")
}

driving()

//Closures can accept parameters

let drivingTo = {(place: String) in
    print("I'm going to \(place) in my car")
}

drivingTo("Toronto")

//Closures can return values

let drivingFrom = {(place: String) -> String in
    return "I'm coming from \(place) in my car. "
}

drivingFrom("Boston")

//You can pass closures into functions

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

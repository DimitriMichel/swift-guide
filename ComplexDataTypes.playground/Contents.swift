import UIKit

/****Arrays****/

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

print(beatles[0]) // "John Lennon"
print(beatles[1]) // "Paul McCartney"

/*
Swift will crash if you read an item that doesn’t exist.
For example, trying to read beatles[9] is a bad idea.
*/


/****Sets****/

/*
Items aren’t stored in any order; they are stored in what is effectively a random order.
No item can appear twice in a set; all items must be unique.
*/

let colors = Set(["red", "green", "blue", "red", "blue"])

// the colors Set will only include red, green, and blue once.

/****Tuples****/

/*
You can’t add or remove items from a tuple; they are fixed in size.
You can’t change the type of items in a tuple; they always have the same types they were created with.
*/

var name = (first: "Louisa", middle:"May", last: "Alcott")

print(name.first)
print(name.middle)
print(name.last)

/****Dictionaries****/

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

/****Enumerations****/

enum Result {
    case success
    case failure
}

let result = Result.failure

import UIKit

struct Person {
    var clothes: String
    var shoes: String
    
    func describe() -> String {
        return "I like wearing \(clothes) and \(shoes)"
    }
}

let john = Person(clothes: "Shirts", shoes: "Loafers")
let yoko = Person(clothes: "Blouses", shoes: "Flats")

var johnJr = john
johnJr.shoes = "High Heels"

print(john)
print(johnJr)
johnJr.describe()

import UIKit

//Example Closure

func filterWithClosure(closure: (Int)-> Bool, numbers:[Int])-> [Int]{
    var filteredNums = [Int]()
    for num in numbers{
        if closure(num){
            filteredNums.append(num)
        }
    }
    return filteredNums
}

//Closures allow us to modify function logic within variable

let numbersLessThanFive = filterWithClosure(closure: { (num) -> Bool in
    return num < 5
}, numbers: [1,2,3,4,5,10])
print(numbersLessThanFive)


//We can create a function to use in the filtering closure
func greaterThanThree(number: Int) -> Bool {
    return number > 3
}
 
let greaterThanThreeList = filterWithClosure(closure: greaterThanThree, numbers: [1,2,3,4,5,10])

func divisibleByFive(number: Int) -> Bool {
    return number % 5 == 0
}

let divisibleByFiveList = filterWithClosure(closure: divisibleByFive, numbers: [1,2,3,4,5,10])

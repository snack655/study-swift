import UIKit

//let friends = ["영희", "철수", "존슨", "제임스"]
//let pets = ["야옹이", "댕댕이", "찍찍이"]
//
//// 배열을 하나로 묶고 싶을 경우에 사용한다.
//let friendAndPetPairs = zip(friends, pets)
//
//for aPair in friendAndPetPairs {
//    print("\(aPair.0), \(aPair.1)")
//}

let friends = ["영희", "철수", "존슨", "제임스"]
let numbers = (1...Int.max)

// 배열을 하나로 묶고 싶을 경우에 사용한다. 튜플로
let friendAndPetPairs = zip(friends, numbers)

for aPair in friendAndPetPairs {
    print("\(aPair.0), \(aPair.1)")
}

let myArray = Array(friendAndPetPairs)

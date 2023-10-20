import UIKit

// swift에서 enum타입에서 CaseIterable 프로토콜에 대해 한번 알아보았습니다.
enum Pet : String, CaseIterable {
    case cat = "고양이"
    case dog = "강아지"
    case bird = "참새"
}

//let pets : [Pet] = [Pet.cat, Pet.dog, Pet.bird]
//let pets : [Pet] = Pet.allCases

let petNames : [String] = Pet.allCases.map {
    $0.rawValue
}


import UIKit

// 학교 - 초, 중, 고
enum School {
//    case elementary
//    case middle
//    case hight
    case elementary, middle, high
}

let yourSchool = School.high
print("yourSchool: \(yourSchool)")
print("yourSchool: ", yourSchool)

enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade: \(yourGrade.rawValue)") // 대입한 값을 할 수 있다.

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    func getName() -> String {
        switch self {
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case .high(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "왕선중학교")
print("yourMiddleSchoolName: \(yourMiddleSchoolName.getName())")

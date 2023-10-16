import UIKit

// swift에서 프로토콜 확장(익스텐션)에 대해 한번 알아보았습니다.

// 이름관련 프로토콜
protocol Naming {
    var lastname: String { get set }
    var firstname: String { get set }
    func getName() -> String
}

extension Naming {
    func getFullName() -> String {
        return self.lastname + " " + self.firstname
    }
}

struct Friend : Naming {
    var lastname: String
    var firstname: String
    func getName() -> String {
        return self.lastname
    }
}

let myFriend = Friend(lastname: "최", firstname: "민재")

myFriend.getFullName()

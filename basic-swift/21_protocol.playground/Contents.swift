import UIKit

// swift에서 프로토콜에 대해 한번 알아보자

// 보통 delegate 패턴의 경우에는 ㅇㅇdelegate
// 스위프트 언어자체에서는 ㅇㅇing, ㅇㅇable
// 등으로 프로토콜의 이름을 정함.

// 프로토콜을 통해
// 맴버변수, 메소드 등을 꼭 구현하도록 강제.

// 프로토콜로 약속
//
protocol Naming {
    // 우리는 이런 변수를 가지고 있을겁니다 라고 약속
    var name : String { get set }
    // 우리는 이런 메소드를 가지고 있을겁니다 라고 약속
    func getName() -> String
}

protocol Aging : Naming {
    var age: Int { get set }
}

protocol UserNotifiable : Naming, Aging {
    
}

struct MyFriend : UserNotifiable {
    var name: String
    
    func getName() -> String {
        <#code#>
    }
    
    var age: Int
    
    
}

//
struct Friend : Naming {
    var name: String
    
    func getName() -> String {
        return "내 친구: " + self.name
    }
}

var myFriend = Friend(name: "정대리")

myFriend.getName()

import UIKit

// swift struct에서 mutating에 대해 한번 알아보자.

class Friend {
    var name : String
    func changeName(newName: String) {
        self.name = "홀홀홀로!" + newName
    }
    init(_ name: String) {
        self.name = name
    }
}

var myFriend = Friend("쩡대리")
myFriend.changeName(newName: "개발하는 정대리")

myFriend.name

struct BestFriend {
    
    var name : String
    
    // struct는 주소 참조가 아니라 값을 그대로 사용하기 때문에 일반적으로 변경하는 것은 불가능하다.
    // 맴버 변수를 변경하는 메서드가 있다면 mutating 키워드를 붙이자!
    mutating func changeName(newName: String) {
        self.name = newName
        print("newName: " + newName)
    }
    
// struct는 자동으로 생성자를 만들어주기 떄문에 생성자를 작성하지 않아도 괜찮다.
//    init(_ name: String) {
//        self.name = name
//    }
}

var myBestFriend = BestFriend(name: "정대리")
myBestFriend.changeName(newName: "개발하는 정대리")

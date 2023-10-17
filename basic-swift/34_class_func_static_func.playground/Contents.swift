import UIKit

class Friend {
    
    // 일반적인 메소드
    func sayHi() {
        print("안녕?!")
    }
    
    // 클래스 메소드로 해당 인스턴스가 생성되지 않아도 호출가능
    // 메모리에 올리지 않아도 바로 사용할 수 있다.
    class func sayBye() {
        print("바이바이~!")
    }
    
    // final class와 같은 역할을 하며 override 가 불가능하다.
    static func sayhoho() {
        print("호홓!!!")
    }
}

class BestFriend : Friend {
    class override func sayBye() {
        print("덮어썼음~ 세이 바이")
    }
    func sayhoho() {
        print("덮어썼음~ 세이 바이")
    }
}

let myFriend = Friend()
myFriend.sayHi()

Friend.sayBye()

Friend.sayhoho()

BestFriend.sayhoho()

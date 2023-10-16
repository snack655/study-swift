import UIKit

// final은 상속을 막는다
// 아래 BestFriend 클래스에는 오류가 발생한다.
final class Friend {
    
    var name : String
    
    init(name: String) {
        self.name = name
    }
}

class BestFriend : Friend {
    
    override init(name: String) {
        super.init(name: "베프 " + name)
    }
}

let myFriend = Friend(name: "최민재")
let myBestFriend = BestFriend(name: "철수")

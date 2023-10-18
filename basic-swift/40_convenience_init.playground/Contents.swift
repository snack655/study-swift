import UIKit

// 추가 생성자

class Friend {
    var name: String
    var age: Int
    
    init(name: String) {
        self.name = name
        self.age = 10
    }
    
    // convenience init = 추가적인 생성자
    // 그냥 거창하게 이름이 붙은거 같은데 코틀린에서 파라미터 다른 생성자 여러개 생성할 수 있는.........
    convenience init(name: String, age: Int) {
        self.init(name: name)
        self.age = age
    }
}

let myFriend = Friend(name: "하하")

let myFriend2 = Friend(name: "쩡대리", age: 100)

myFriend.age
myFriend2.age


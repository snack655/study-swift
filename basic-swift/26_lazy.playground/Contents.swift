import UIKit

// swift에서 lazy 키워드에 대해 한번 알아보자

struct Pet {
    init() {
        print("Pet이 생성되었다.")
    }
}

struct Friend {
    
    var name: String
    
    lazy var pet : Pet = Pet()
    
    init(_ name: String) {
        self.name = name
        print("Friend가 생성됨")
    }
}

var myFriend = Friend("최민재")

myFriend.pet

// lazy는 변수 사용 시점에 메모리에 적제한다.

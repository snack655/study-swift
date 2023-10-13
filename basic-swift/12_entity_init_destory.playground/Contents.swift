import UIKit

class MyFriend {
    
    var name : String
    
    init(_ name: String = "이름 없음") {
        self.name = name
        print("MyFriend가 메모리에 올라갔다.")
    }
    
    deinit {
        print("메모리에서 사라짐 - ", self.name)
    }
    
    // deinit 검증을 위해 작성
    var calledTimes = 0
    let MAX_TIMES = 5
    
    static var instancesOfSelf = [MyFriend]()
    
    class func destorySelf(object: MyFriend) {
        instancesOfSelf = instancesOfSelf.filter{ (aFriend : MyFriend) in
            aFriend !== object
        }
    }
    
    func call() {
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MAX_TIMES {
            MyFriend.destorySelf(object: self)
        }
    }
}

let myFriend = MyFriend("최민재")
let aFriend = MyFriend()

// Unmanaged.passUnretained(객체).toOpaque()
// 로 해당 객체의 메모리 주소를 프린트 할 수 있습니다.
let anObjectMemoryAddress = Unmanaged.passUnretained(aFriend).toOpaque()

let secondMemoryAddress = Unmanaged.passUnretained(myFriend).toOpaque()

print(anObjectMemoryAddress)

print(secondMemoryAddress)

weak var aFriendToBeDestoried = MyFriend("개발하는 최민재")

if aFriendToBeDestoried != nil {
    aFriendToBeDestoried!.call()
} else {
    print("객체가 더 이상 메모리에 없습니다.")
}

// 메모리에서 사라지면 deinit이 실행된다.

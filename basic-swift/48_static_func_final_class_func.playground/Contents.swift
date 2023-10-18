import UIKit

class MyClass {
    
    // 인스턴스 메소드 - 메모리에 올라가는 일반적인 메소드
    func saySomething() {
        print("saySomething")
    }
    
    // 외부에서 바로 사용 가능하며, 상속이 가능함.ㅣ
    class func sayHi() {
        print("안녕?!")
    }
    
    // 외부에서 바로 사용 가능, 상속이 불가능
    static func sayHello() {
        print("안녕?! 하세요~!")
    }
    
    // 외부에서 바로 사용 가능, 상속이 불가능
    final class func sayHelloHello() {
        print("안녕?! 하세요~! 안녕?! 하세요~")
    }
}

class MySubClass : MyClass {
    
    override class func sayHi() {
        super.sayHi()
        print("MySubClass.sayHi - called")
    }
}

MyClass.sayHi()
MySubClass.sayHi()

let myObject = MyClass()
myObject.saySomething()

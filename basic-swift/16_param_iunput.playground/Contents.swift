import UIKit

// swift에서 메소드 매개변수 inout에 대해 한번 알아보자.

func sayName(_ name: String) {
    print("안녕?! 난 \(name) 라고 해")
}

sayName("최민재")

// inout으로 메소드에 매개변수로 들어오는 값은 변경 할 수 있다.
// 하지만 inout 키워드를 이용하면 값 변경 가능.
func sayHi(_ name: String) {
    // name = "개발하는 " + name
    // Cannot assign to value: 'name' is a 'let' constant
    print("안녕?! 난 \(name) 라고 해")
}

sayHi("최민재")

func sayHello(_ name: inout String) {
    name = "개발하는 " + name
    print("안녕?! 난 \(name) 라고 해")
}

var name = "최민재"
sayHello(&name)

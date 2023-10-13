import UIKit

// 함수, 메소드 정의
func myFunction(name: String) -> String {
    return "안녕하세요?! \(name) 입니다!"
}

// 함수, 메소드를 호출한다. call
myFunction(name: "최민재")

// 함수, 메소드 정의 / 사용자에게 보일 매개변수의 이름을 변경할 수 있다.
func myFunctionSecond(with name: String) -> String {
    return "안녕하세요?! \(name) 입니다!"
}

myFunctionSecond(with: "호롤롤로")

// 매개변수 이름을 넣고 싶지 않을 경우.
func myFunctionThird(_ name: String) -> String {
    return "안녕하세요?! \(name) 입니다!"
}

myFunctionThird("하하하")

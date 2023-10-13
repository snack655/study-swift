import UIKit

// () -> Void
// func completion() {
//
// }

// String을 반환하는 클로저
let myName : String = {
    // myName으로 들어간다
    return "최민재"
}()

print(myName)

// 클로저 정의
let myRealName : (String) -> String = { (name: String) -> String in
    return "개발하는 \(name)"
}

myRealName("무응")

let myRealNameLogic : (String) -> Void = { (name: String) in
    print("개발하는 \(name)")
}

myRealNameLogic("무으응")

// 매개변수 클로저
// completion 이라는 클로저를 매개변수로 가지는 메소드 정의
func sayHi(completion: () -> Void) {
    print("sayHi() called")
    sleep(2) // 2초 멈추기
    // completion 클로저 실행
    completion()
}

// 메소드 호출부에서 이벤트 종료를 알 수 있다.
sayHi(completion: {
    print("2초가 지났다. 1")
})

sayHi() {
    print("2초가 지났다. 2")
}

sayHi {
    print("2초가 지났다. 3")
}

// (String) -> Void
// func completion(userInput: String) {
//
// }

// 매개변수로서 데이터를 반환하는 클로저
func sayHiWithName(completion: (String) -> Void) {
    print("sayHiWithName() called")
    sleep(2)
    // 클로저를 실행과 동시에 데이터 반환
    completion("오늘도 빡코딩하고 계신가요?!")
}


sayHiWithName(completion: { (comment: String) in
    print("2초 뒤에 그가 말했다! comment: ", comment)
})

sayHiWithName(completion: { comment in
    print("2초 뒤에 그가 말했다! comment: ", comment)
})

sayHiWithName { comment in
    print("2초 뒤에 그가 말했다! comment: ", comment)
}

sayHiWithName {
    print("2초 뒤에 그가 말했다! comment: ", $0)
}

// (String, String) -> Void
// func completion(first: String, second: String) {
//
// }

func sayHiWithFullName(completion: (String, String) -> Void) {
    print("sayHiWithFullName() called")
    sleep(2)
    // 클로저를 실행과 동시에 데이터 반환
    completion("빡코딩", "호롤롤로")
}

sayHiWithFullName { first, second in
    print("첫번째: \(first), 두번째: \(second)")
}

sayHiWithFullName { _, second in
    print("두번째: \(second)")
}

sayHiWithFullName {
    print("첫번째: \($0), 두번째: \($1)")
}

func sayHiOptional(completion: (() -> Void)? = nil) {
    print("sayHi() called")
    sleep(2)
    // completion 클로저 실행
    completion?()
}

sayHiOptional()

sayHiOptional(completion: {
    print("2초가 지났다.!!")
})

// (Int) -> String
// func transform(number: Int) -> String {
//     return "숫자 : \(number)"
// }

var myNumbers : [Int] = [0, 1, 2, 3, 4, 5]

//var transformedNumbers = myNumbers.map { aNumber in
//    return "숫자: \(aNumber)"
//}

//var transformedNumbers = myNumbers.map { (aNumber: Int) -> String in
//    return "숫자: \(aNumber)"
//}

var transformedNumbers = myNumbers.map {
    return "숫자: \($0)"
}

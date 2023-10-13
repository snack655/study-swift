import UIKit

// 옵셔널이란?
// 값이 있는지 없는지 모른다.
var someVariable : Int? = nil

if someVariable == nil {
    someVariable = 90
}

// optional 변수를 확실히 값이 들어가 있는 것을 확인하기 위한 것을 upwrap이라고 한다.
// 여러가지 방법이 있다.

if let otherVariable = someVariable {
    // 이런 코드를 작성할 경우 otherVariable은 Optional이 아니다.
    print("언래핑 되었다. 즉 값이 있다. otherVariable : \(otherVariable)")
} else {
    print("값이 없다.")
}

someVariable = nil

// someVariable이 비어있으면 즉 값이 없으면 기본값으로 요놈을 넣겠다.
let myValue = someVariable ?? 10
print("myValue: \(myValue)")

var firstValue : Int? = nil
var secondValue : Int? = 50

print("firstValue: \(firstValue)")
print("secondValue: \(secondValue)")

unwrap(firstValue)
unwrap(secondValue)

func unwrap(_ parameter: Int?) {
    print("unwrap() called")
    // 값이 없으면 리턴 해버린다.
    guard let unWrappedParam = parameter else {
        return
    } // guard는 niL을 허용하지 않는다. 따라서 else로 처리되는데 return 동작.
    print("unWrappedParam: \(unWrappedParam)")
}

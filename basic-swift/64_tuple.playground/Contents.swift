import UIKit

// 튜플은 스위프트 콜렉션 중 하나.
// 콜랙션 : 배열, 딕셔너리, 셋, 튜플
// 튜플은 키와 값으로 이뤄진 묶음.
// (키: 값, 키: 값...)
var myPet : (name: String, kind: String, age: Int) = (name: "댕댕이", kind: "강아지", age: 1)

var myCat : (String, String, age: Int) = ("댕댕이", "고양이", age: 1)

myCat.age

// 메소드 반환 Tuple

// 튜플이 빛날때는 메소드의 반환형으로 사용할 때 입니다.
func someFunction() -> (first: String, second: String) {
    return ("하하하", "호호호")
}

let result = someFunction()

result.0
result.1

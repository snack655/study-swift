import UIKit

let statusCode = 403

// 400 - 499 레인지에 status 코드가 포함된다.
if (400...500).contains(statusCode) {
    print("들어옴 contain")
} // "들어옴 contain\n"

// 패턴 매칭 연산자
// ~= 를 통해 보다 간결하게 표현 가능.
if (400...500) ~= statusCode {
    print("들어옴 ~=")
} // "들어옴 ~=\n"

// 커스텀 패턴 매칭 연산자

switch statusCode {
case (400...500):
    print("들어옴 - switch")
default: break
}

if case (400...500) = statusCode {
    print("들어옴")
}

func doSomeCheck(status: Int) {
    guard (400...500) ~= status else {
        print("안들어옴")
        return
    }
    print("들어왔습니다.")
}

doSomeCheck(status: 500)

func ~= (pattern: String, value: Int) -> Bool {
    return pattern == "\(value)"
}

if "30" ~= 30 {
    print("30 입니다.")
} else {
    print("30 아닙니다.")
}

let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-a]{2,64}"
let emailPred = NSPredicate(format: "SELF MATCHES %@", emailRegEx)

if emailPred ~= "ppakcoding" {
    print("이메일 형식입니다")
} else {
    print("이메일 형식이 아닙니다")
}

switch "ppakcoding" {
case emailPred:
    print("이메일 형식입니다")
default:
    print("이메일 형식이 아닙니다")
}

let someValue = 30
switch someValue {
case "30":
    print("30 입니다 - switch")
default:
    print("30 아닙니다. - switch")
}

if case "30" = someValue {
    print("30 입니다. - if case")
} else {
    print("30 아니빈다 - if case")
}

import UIKit

var isDartMode : Bool = false

if (isDartMode == true) {
    print("다크모드 입니다.")
} else {
    print("다크모드가 아닙니다.")
}

// 중괄호 삭제 가능
if isDartMode == true {
    print("다크모드 입니다.")
} else {
    print("다크모드가 아닙니다.")
}


if isDartMode {
    print("다크모드 입니다.")
} else {
    print("다크모드가 아닙니다.")
}

if !isDartMode {
    print("다크모드가 아닙니다.")
} else {
    print("다크모드 입니다.")
}

var title : String = isDartMode == true ? "다크모드 입니다" : "다크모드가 아닙니다."
print("title: \(title)")

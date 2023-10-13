import UIKit

// 데이터(변수)를 묶는 방법 / struct, class 2가지가 있음.
struct YoutuberStruct {
    var name : String
    var subscribersCount : Int
}

var devMooooong = YoutuberStruct(name: "Mooooong", subscribersCount: 99999)

var devMooooongClone = devMooooong

print("값 넣기 전 devMooooongClone.name : \(devMooooong.name)")

devMooooongClone.name = "최민재"

print("값 넣은 후 devMooooongClone.name : \(devMooooongClone.name)")
print("값 넣은 후 devMooooong.name : \(devMooooong.name)")

// class
class YoutuberClass {
    var name : String
    var subscribersCount : Int
    
    // 생성자 - 즉 메모리에 올린다. 인스턴스화
    // init으로 매개변수를 가진 생성자 메소드를 만들어야
    // 매개변수를 넣어서 그 값을 가진 객체를 만들 수 있다.
    init(name: String, subscribersCount: Int) {
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

var snack = YoutuberClass(name: "Mooooong", subscribersCount: 99999)
var snackClone = snack

print("값 넣기 전 snack.anme : \(snack.name)")

snackClone.name = "최민재"

print("값 넣은 후 snackClone.name : \(snackClone.name)")
print("값 넣은 후 snack.name : \(snack.name)")

// class는 대입할 경우 같은 주소를 바라보고
// struct는 값이 복사된다.

// + 프로퍼티 옵저버
var myAge = 0 {
    willSet {
        print("값이 설정될 예정이다. myAge: \(myAge)")
    }
    didSet {
        print("값이 설정되었다. myAge: \(myAge)")
    }
}

myAge = 10
myAge = 20

import UIKit

// struct는 기본으로 생성자를 생성한다.
//class Pet {
//    var name: String
//    
//    init(name: String) {
//        self.name = name
//    }
//}

struct Pet {
    var name: String
    
    init(name: String = "댕댕이") {
        self.name = name
    }
}

//extension Pet {
//    init() {
//        name = "호호호"
//    }
//}

let myCat = Pet(name: "호호호")
let myCat2 = Pet()

// let myDog = Pet()

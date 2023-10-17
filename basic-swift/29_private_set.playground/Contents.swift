import UIKit

struct MyPet {
    
    var title : String = "타이틀 없음"
    
    private (set) var name : String = "이름없음"
    
    // private set이라서 내부에서 접근해서 Name 변경이 가능하지만 외부에서는 물가능하다.
    mutating func setName(to newName: String) {
        self.name = newName
    }
}

var myPet = MyPet()
//myPet.name
//myPet.title
myPet.title = "호롤롤로"
myPet.title

// myPet.name = "옥건호"  // Cannot assign to property: 'name' setter is inaccessible
myPet.setName(to: "옥건호")
myPet.name


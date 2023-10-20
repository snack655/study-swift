import UIKit

class Sword {
    
    // 내구도
    var durability : Int = 100
    
    var itemInfo : String {
       // get{...}으로 감쌀 수 있지만 생략할 수 있다.
        switch durability {
        case 50...100:
            return "음~ 아주 명검이야 후후후"
        case 10...50:
            return "아직 쓸만 하군"
        default:
            return "더 이상 쓸 것이 못된다..."
        }
    }
    
    func attackMonster() {
        self.durability -= 40
    }
}

let mySword = Sword()
mySword.itemInfo

mySword.attackMonster()
mySword.itemInfo

mySword.attackMonster()
mySword.itemInfo

mySword.attackMonster()
mySword.itemInfo

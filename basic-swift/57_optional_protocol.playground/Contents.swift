import UIKit

// objective-c 에서 사용할 수 있습니다.
@objc protocol Animal {
    // 프로토콜에서 구현이 강제가 아니게 된다.
    @objc optional func doMoreCry()
}

protocol Pet {
    func doCry()
}

extension Pet {
    func doCry() {}
}

class Cat : Animal {
    
}

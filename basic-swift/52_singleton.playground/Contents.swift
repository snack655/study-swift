import UIKit

final class Pet {
    
    static let shared = Pet()
    
    private init() { }
    
    var name: String = "고양이"
}

Pet.shared.name = "개냥이"

let myCat = Pet.shared
let myDog = Pet.shared


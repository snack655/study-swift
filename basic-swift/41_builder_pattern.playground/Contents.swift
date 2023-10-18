import UIKit

// swift에서 객체생성 관련 디자인패턴 중 빌더패턴에 대해 한번 알아보자.
// 빌더 - 만들어주는 것을 만든다.

struct Pet {
    var name: String? = nil
    var age: Int? = nil
    
    init() {}
    init(builder: SecondPetBuilder) {
        self.name = builder.name
        self.age = builder.age
    }
}

class SecondPetBuilder {
    var name: String? = nil
    var age: Int? = nil
    
    typealias BuilderClosure = (SecondPetBuilder) -> ()
    
    init(buildClosure: BuilderClosure) {
        buildClosure(self)
    }
}

class PetBuilder {
    private var pet : Pet = Pet()
    func withName(_ name: String) -> Self {
        pet.name = name
        return self
    }
    
    func withAge(_ age: Int) -> Self {
        pet.age = age
        return self
    }
    
    func build() -> Pet {
        return self.pet
    }
}

let myPet = PetBuilder()
    .withName("야옹이")
    .withAge(10)
    .build()

let petBuilder = SecondPetBuilder { builder in
    builder.name = "댕댕이"
    builder.age = 10
}

let mySecondPet = Pet(builder: petBuilder)

import UIKit

struct Friend {
    let nickname: String
    let person: Person?
}

struct Person {
    let name: String?
    let pet: Pet?
}

struct Pet {
    let name: String?
    let kind: String
}

let pet = Pet(name: "개냥이", kind: "고양이")
let person = Person(name: "정대리", pet: pet)
let friend = Friend(nickname: "빡코더", person: nil)

if let petName = friend.person?.pet?.name {
    print("petName : \(petName)")
} else {
    print("getName : 없음")
}

func getPetName() {
    guard let petName = friend.person?.pet?.name else {
        print("petNmae : 없음")
        return
    }
    
    print("petName : \(petName)")
}

if let person = friend.person,
   let pet = person.pet,
   let petName = pet.name {
    print("petName : \(petName)")
} else {
    print("petNmae : 없음")
}

if let person = friend.person {
    if let pet = person.pet {
        if let petName = pet.name {
            print("petName : \(petName)")
        } else {
            print("petName : 없습니다")
        }
    }
}



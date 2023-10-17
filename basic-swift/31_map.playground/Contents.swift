import UIKit

// swift의 map에 대해서 알아보자.

// 배열이 있다면 내부 요소의 형태를 변경하는 것이 Map이다.

let friendsArray : [String] = ["철수", "영희", "수잔", "제임스", "마크"]

let myFriends = friendsArray.map { aFriend in
    return "내 친구다 -> " + aFriend
}

let numbers : [Int] = [22, 33, 44, 55]

//let myNumbers : [String] = numbers.map { aNumber in
//        return "내 숫자 : \(aNumber)"
//}

let myNumbers : [String] = numbers.map {
    return "내 숫자 : \($0)"
}

let myPetDictionary = ["고양이" : "야옹", "강아지" : "멍멍", "송아지" : "음매"]

let myPets : [String] = myPetDictionary.map { (animal: String, cry: String) in
    return "\(animal)의 울음소리는 \(cry) 이다"
}

let numberSet : Set<Int> = [1, 1, 1, 2, 3, 4, 4, 4, 5]

let myFavoriteNumbers : [String] = numberSet.map { aNumber in
    return "\(aNumber * 10) 입니다."
}

let myBestFriendsArray : [String?] = ["철수", nil, "수잔", nil, "마크"]

let myBestFriends = myBestFriendsArray.map { aBestFriend in
        let aFriend = aBestFriend ?? ""
    return "내 배프 -> " aBestFriend
}

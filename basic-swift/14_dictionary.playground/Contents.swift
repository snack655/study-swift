import UIKit

// 키 값으로 한쌍인 딕셔너리 - 사물함과 비슷.
// 키 : 값
var myFriends = ["bestFriend" : "최민재",
                 "highschool" : "영희"
                ]

let myBestFriend = myFriends["bestFriend"]

let highSchoolFriend = myFriends["highschool"]

let youtubeFriend = myFriends["youtube", default: "친구없음"]

myFriends["bestFriend"] = "개발하는 최민재"

let myBF = myFriends["bestFriend"]

myFriends["newFriend"] = "철수"

myFriends.updateValue("수잔", forKey: "girlFriend")

let girlFriend = myFriends["girlFriend"]

myFriends.updateValue("짹슨", forKey: "bestFriend")

let myBestFriend2 = myFriends["bestFriend"]

//let emptyDictionary : [Strubg : Int] = [:]
let emptyDictionary = [String : Int]()

let myEmptyDictionary : [String : Int] = Dictionary<String, Int>()

myFriends.count

for item in myFriends {
    print("item : ", item)
}

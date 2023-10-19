import UIKit

let myFriends = ["철수", "영희", "수잔", "제시카"]
let yourFriends = ["철수", "영희", "제니퍼", "존시나"]

let myFriendsSet = Set(myFriends)
let yourFriendsSet = Set(yourFriends)

// 인터섹션으로 중복만 가져오기.
let sharedFriends = myFriendsSet.intersection(yourFriends)
// 영희, 철수

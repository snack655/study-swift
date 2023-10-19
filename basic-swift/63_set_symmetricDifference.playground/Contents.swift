import UIKit

let myFriends = ["철수", "영희", "수잔", "제시카"]
let yourFriends = ["철수", "영희", "제니퍼", "존시나"]

let myFriendsSet = Set(myFriends)
let yourFriendsSet = Set(yourFriends)

// 중복 제거 / 중복되는 요소는 제거하고 가져오기.
let totalFriends = myFriendsSet.symmetricDifference(yourFriends)
// 수잔, 존시나, 제니퍼, 제시카

import UIKit

let myFriends = ["철수", "영희", "수잔", "제시카"]
let yourFriends = ["철수", "영희", "제니퍼", "존시나"]

// 배열을 Set으로 만들기
let myFriendsSet = Set(myFriends)
let yourFriendsSet = Set(yourFriends)

// 유니온으로 중복은 제거하고 둘 합치기
let totalFriends = myFriendsSet.union(yourFriendsSet)
// 제니퍼, 수잔, 철수, 영희, 제시카, 존시나

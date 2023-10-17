import UIKit

var myArray = [3, 4, 88, 99, 5, 6, 7, 8, 10, 20, 100]

var orderedArray = myArray.sorted() // sorted는 정렬된 배열을 반환한다.

myArray.sort() // sort는 배열을 그대로 정렬

var descendingArray = myArray.sorted(by: >) // by: >를 통해서 내림 차순 가능

myArray.sort(by: >)

struct Todo : Comparable, Hashable {
    static func < (lhs: Todo, rhs: Todo) -> Bool {
        return lhs.id < rhs.id
    }
    
    var id: Int
    var title: String
}

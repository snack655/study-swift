import UIKit

// 범위안에서 반복 처리

// stride를 통해 범위 안에 반복 처리가 가능합니다.
// from 시작, to 끝, by 만큼

// 5, 4, 3, 2, 1
for countdown in stride(from: 5, to: 0, by: -1) {
    print("카운트 다운 : \(countdown)")
}

// 0, 1, 2, 3, 4
for countup in stride(from: 0, to: 5, by: 1) {
    print("카운트 다운 : \(countup)")
}

// 5, 4, 3, 2, 1, 0
// through로 0을 포함한다.
for countdown in stride(from: 5, through: 0, by: -1) {
    print("카운트 다운 : \(countdown)")
}

extension Array {
    func chunks(_ chuckSize: Int) -> [[Element]] {
        return stride(from: 0, to: self.count, by: chuckSize).map {
            Array(self[$0..<Swift.min($0 + chuckSize, self.count)])
        }
    }
}

let numbers = Array(1...10)
let chunckedArray = numbers.chunks(2)

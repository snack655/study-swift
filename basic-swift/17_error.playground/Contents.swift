import UIKit

enum MismatchError: Error {
    case nameMismatch
    case numberMismatch
}

// throws로 erorr를 던지는 메서드라는 것을 표기.
func guessMyName(name input: String) throws {
    print("guessMyName() called")
    if input != "최민재" {
        print("틀렸다")
        throw MismatchError.nameMismatch // throw로 error를 던질 수 있다.
    }
    print("맞췄다")
}

// error를 던지는 메서드를 사용하면 try를 사용해야함.
// try? 는 error를 처리하지 않겠다는 것.
try? guessMyName(name: "최무응")

// 무조건 에러가 없다는 것.
// 따라서 에러가 던져지면 에러가 난다.
// try! guessMyName(name: "최무응")

// 에러를 잡고 싶다면?
// do에 try를 쓰고 catch에서 처리.
do {
 try guessMyName(name: "최무응")
} catch {
    print("잡은 에러: \(error)")
}

/// 번호를 맞춘다
/// - Parameter input: 사용자 숫자 입력
/// - Returns: bool 맞췄는지 여부
func guessMyNumber(number input: Int) throws -> Bool {
    print("guessMyNumber() called")
    
    if input != 10 {
        print("틀렸다")
        
        throw MismatchError.numberMismatch
//        throw MismatchError.nameMismatch // throw로 error를 던질 수 있다.
    }
    print("맞췄다")
    return true
}


do {
    // 에러가 나면 이곳은 실행되지 않는다.
    // -> 변수 생성도 없음!
    let receivedValue = try guessMyNumber(number: 10)
} catch {
    print("잡은 에러: \(error)")
}

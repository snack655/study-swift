import UIKit

func someFunctionWithTrailingClosure(completion: () -> Void) {
    print(#fileID, #function, #line, "- ")
    completion()
}

someFunctionWithTrailingClosure(completion: {
    print(#fileID, #function, #line, "- hohoho 1")
})

someFunctionWithTrailingClosure {
    print(#fileID, #function, #line, "- hohoho 2")
}

func someFunctionWithClosures(
    first: () -> Void,
    second: (String) -> Void,
    third: (Int) -> Void
) {
    print(#fileID, #function, #line, "- ")
    first()
    second("호롤롤로")
    third(3)
}

someFunctionWithClosures {
    print("first")
} second: { string in
    print("string: \(string)")
} third: { number in
    print("string: \(number)")
}

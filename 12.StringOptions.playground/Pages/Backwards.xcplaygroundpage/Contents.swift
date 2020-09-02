
//: [Previous](@previous)
// 문자열의 검색방향을 지정하는 옵션 "Backwards"

import Foundation

/*:
 # Backwards Option
 */

let korean = "행복하세요"      // leading(시작) ----> Trailing(끝) (일반적인 검색 방향)
let english = "Be happy"
let arabic = "كن سعيدا"     // 아랍어는 오른쪽에서부터 읽음  Tailing <------- leading

// Swift 일반적으로 Leading에서 Trailing방향으로 검색함


if let range = english.range(of: "p") { // 6번째 인덱스
    english.distance(from: english.startIndex, to: range.lowerBound)
}

// 5


if let range = english.range(of: "p", options: [.backwards]) {  // 트레일링에서 리딩방향으로 검색 ===> 7번째 인덱스
    english.distance(from: english.startIndex, to: range.lowerBound)
}

// 6



//: [Next](@next)

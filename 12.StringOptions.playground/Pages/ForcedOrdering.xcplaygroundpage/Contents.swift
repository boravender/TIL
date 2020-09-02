
//: [Previous](@previous)

import Foundation

/*:
 # Forced Ordering Option
 */
// 어떤 경우에도 강제로 정렬하는 옵션 (그냥 이런 옵션이 있다는 정도만 알아둬도 됨)

let upper = "STRING"      // 나중에 .lowercased() 추가
let lower = "string"

let upper1 = "STRING".lowercased()


 
upper == lower  //false


// 대소문자 구분하지 않고 비교
upper.compare(lower, options: [.caseInsensitive]) == .orderedSame   // true


upper.compare(lower, options: [.caseInsensitive, .forcedOrdering]) == .orderedSame   //false (왜냐면 여기서는 오름차순)
                     // 여기서는 .caseInsensitive무시됨   // 강제정열 순서파악 결과로 리턴

// 문자열이 완벽하게 동일하지 않은 경우에는, NSOrderedAscending(오름차순)이나 NSOrderedDescending(내림차순)으로 강제로 리턴하도록 설정
// (전체옵션을 적용했을때, 같은 문자열로 판단된다면 일부옵션을 무시하고, 최대한 문자열의 순서를 파악할 수있는 값을 리턴)


upper1.compare(lower, options: [.caseInsensitive, .forcedOrdering]) == .orderedSame
// true
//: [Next](@next)


//: [Previous](@previous)

import Foundation

/*:
 # Literal Option
 */
let a = "\u{D55C}"      // "한" (완성형) ===> 하나의 코드 유닛
let b = "\u{1112}\u{1161}\u{11AB}"   // "한" (조합형)




a == b   // true
a.compare(b) == .orderedSame    // 문자열에 할당되어있는 코드만 비교하는 것이 아니라, 여러개의 코드 유닛을 조합했을때 얻게되는 결과를 비교 (최종문자의 같은 모양을 비교)

// 오브젝티브-C 에서는 "개별 코드만 비교" (주의해서 사용해야함)



a.compare(b, options: [.literal]) == .orderedSame   // 리터럴 옵션은 "개별 코드"를 비교 ===> 훨씬 빠름(개별 코드만 비교하니까..)
//false


//: [Next](@next)

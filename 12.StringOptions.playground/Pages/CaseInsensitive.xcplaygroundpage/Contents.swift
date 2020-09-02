
import UIKit

// 스위프트에서는 9가지 문자열 옵션을 제공
// 문자열이 제공하는 메서드중에서 "options"파라미터를 가진 메서드에서 모두 사용가능
// 여기서는 주로 compare메서드 사용

//문자열 옵션을 통해 다양한 비교/검색 조건을 지정하는 방법에 대해 공부합니다.
//- Case Insensitive Option
//- Literal Option
//- Backwards Option
//- Anchored Option

/*:
 # Case Insensitive Option
 */
"A" == "a"      //false

// 단순히 대소문자 구분 없이 비교할때 가장 단순한 메서드
"A".caseInsensitiveCompare("a") == .orderedSame //  Bool값을 리턴하는게 아니라, Comparison Result를 리턴
                                 //.orderedDescending (내림차순)
                                 //.orderedAscending (오름차순)



// 대소문자 구분 없고, 다른 문자열 옵션도 함께 사용할때
"A".compare("a", options: [.caseInsensitive]) == .orderedSame
                      //NSString.CompareOptions


// String.CompareOptions (타입앨리어스로 선언되어있음)
NSString.CompareOptions.caseInsensitive    // .caseInsensitive (형식추론 가능하기 때문에 짧게 써도 됨)
// Nested타입, 구조체로 선언되어 있음, OptionSet프로토콜 채용
// []에 2개 이상의 옵션을 전달할 수 있음


//: [Next](@next)

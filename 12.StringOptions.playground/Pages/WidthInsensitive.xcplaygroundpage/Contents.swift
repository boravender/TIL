
//: [Previous](@previous)

import Foundation

/*:
 # Width Insensitive Option
 */
// 아시아국가들에서 사용하는 문자들... 정각문자(영문자 고정폭을 기준 2배의 넓이) , 반각문자(정각문자 절반의 넓이)로 표현할 수 있음

let a = "\u{30A1}"  // 정각문자  (일본 가타카나) "아"
let b = "\u{ff67}"  // 반각문자



a == b
a.compare(b) == .orderedSame  // false (눈에 보이는 결과가 다르기 때문)





a.compare(b, options: [.widthInsensitive]) == .orderedSame  //true





//: [Next](@next)

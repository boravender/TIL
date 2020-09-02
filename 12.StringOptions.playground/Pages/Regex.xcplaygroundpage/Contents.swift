
//: [Previous](@previous)

import Foundation

/*:
 # Regular Expression(정규식)
 */
// 정규식 옵션 (많이 사용) ===> 복잡한 패턴의 문자를 쉽게 검색 가능
// 주로 입력된 값을 검증할때 활용


// 이메일 검증 코드
let emailPattern = "([0-9a-zA-Z_-]+)@([0-9a-zA-Z_-]+)(\\.[0-9a-zA-Z_-]+){1,2}"

let emailAddress = "user@example.com😭"


// 문자열 옵션 사용하지 않고, 검색해보기
if let _ = emailAddress.range(of: emailPattern) {
    print("found")
} else {
    print("not found")
}



// 정규식 옵션 추가
if let range = emailAddress.range(of: emailPattern, options:[.regularExpression]), (range.lowerBound, range.upperBound) == (emailAddress.startIndex, emailAddress.index(before: emailAddress.endIndex)) {   // 해당패턴이 존재하면, 범위를 리턴
    print("found")              // found
} else {
    print("not found")
}



if let range = emailAddress.range(of: emailPattern, options:[.regularExpression]), (range.lowerBound, range.upperBound) == (emailAddress.startIndex, emailAddress.endIndex) {   // 해당패턴이 존재하면, 범위를 리턴
    print("found")
} else {
    print("not found")          // not found
}



// 정규식(正規式)은 특정한 규칙을 가진 문자열의 집합을 표현하는 데 사용하는 형식 언어
// https://www.youtube.com/watch?v=Gg0tlbrxJSc
// https://www.youtube.com/watch?v=-5cnj7q1-YY
// https://regexr.com/



//: [Next](@next)

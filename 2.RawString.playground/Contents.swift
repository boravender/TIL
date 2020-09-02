
import UIKit

// Swift 5에 새롭게 추가된 Raw String에 대해 공부합니다.



/*:
# Raw String
*/
// Raw String: 정규식 문자열을 직관적으로 작성할 수 있다는 장점


// 문자열 리터럴에서
//  " 문자열의 시작과 끝을 표현
//  \ 이스케이프 시퀸스

//  \" (따옴표를 넣고 싶으면)


var str = "\"Hello\", Swift 5"

var rawStr = #"\"Hello\", Swift 5"#         // #샵으로 감싸면 (Raw String) ===> 문자 그대로 출력 ===> 문자열의 가독성이 증가 (특수문자도 쉽게 구성)



print("===== str =====")
print(str)                  // "Hello", Swift 5


str = "Lorem\nIpsum"            // (중간에) \n 줄바꿈 추가

print("===== str =====")
print(str)



print("===== raw str =====")
print(rawStr)               // \"Hello\", Swift 5


rawStr = #"Lorem\nIpsum"#       //  줄바꿈 되지 않음


rawStr = #"Lorem\#nIpsum"#          // 줄바꿈 하고 싶다면? ===> # 샵추가  Raw String 내에서... (\#n)

print("===== 샵 추가 raw str =====")
print(rawStr)


rawStr = ###"Lorem\###nIpsum"###    // 샵을 여러개 추가할 수도 있는데, 샵의 갯수를 맞춰야 함

print("===== 샵 여러개 추가 raw str =====")
print(rawStr)




/*:
# String Interpolation
*/


let value = 123
str = "The value is \(value)"

rawStr = #"The value is \#(value)"#





print(str)
print(rawStr)



/*:
# 정규식 문자열
*/
// 정규식(正規式)은 특정한 규칙을 가진 문자열의 집합을 표현하는 데 사용하는 형식 언어
// https://www.youtube.com/watch?v=Gg0tlbrxJSc
// https://www.youtube.com/watch?v=-5cnj7q1-YY
// https://regexr.com/


// 정규식에서 메타문자도 백슬래시로 시작하면, 이스케이프 시퀀스로 인식됨 ===> 에러를 피하기 위해 \\ (백슬레시 두개) ===> 다른언어와 정규식 문자열 다름
var zipCodeRegex = "^\\d{3}-?\\d{3}$"       // 간단한 우편번호 정규식
zipCodeRegex = #"^\d{3}-?\d{3}$"#       //불필요한 백슬래시 제거로 문자열의 가독성이 높아졌음


// 정규식 확인하는 코드

let zipCode = "123-456"

if let _ = zipCode.range(of: zipCodeRegex, options: [.regularExpression]) {     //올바른 우편번호로 판단하고 있음
    print("valid")
}


// 정규식 문자열을 Raw String으로 작성하면 메타문자를 바로 입력할 수 있음

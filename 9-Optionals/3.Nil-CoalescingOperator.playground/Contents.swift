import UIKit

/*:
 # Nil-Coalescing Operator
 */


var msg = ""
var input: String? = "Swift"

if let inputName = input {
    msg = "Hello, " + inputName
} else {
    msg = "Hello, Stranger"
}

print(msg)



                      //조건연산자
var str = "Hello, " + (input != nil ? input! : "Stranger")
print(str)




/*:
 ## Syntax
 ````
 a ?? b
 OptionalExpression ?? Expression
 ````
*/
// 닐 코얼레싱 오퍼레이터
// 값이 저장되어있는지 확인하는 코드와, 값을 추출하는 코드를 직접 작성할 필요가 없음


// 옵셔널스트링 ?? 스트링


input = nil
str = "Hello, " + (input ?? "Stranger")    // 논리연산자와 마찬가지로 단락평가를 수행, 사이드 이펙트가 발생하지 않는 코드여야함
print(str)





















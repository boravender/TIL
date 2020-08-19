
import UIKit
/*:
 # Variables
 
 ## Syntax
 ![Variables Syntax](syntax-var.png)
 */
// 프로그램에서 데이터를 처리하기 위한 첫번째 단계 ===> 메모리에 값을 저장 (변수/상수)
// = "할당연산자"

var name = "SWift"
var year = 2020
var valid = true

var x = 0.0, y = 0.0, z = 0.0

name // 표현식
print(name)
print(year)
/*:
 ## Syntax
 ![Variables Syntax](syntax-var-new-value.png)
 */
// 변수에 새로운 값을 저장

name = "Steve"
name = "Bora"

print(name)

var anotherName = name // 값을 복사하여 저장
anotherName = "Tim"
print(name, anotherName) // name 값은 변경되지 않음

// year = "2020" => 타입이 달라서 저장할 수 없음
//: [Next](@next)

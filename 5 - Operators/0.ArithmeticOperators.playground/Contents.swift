
import UIKit

/*:
 # Arithmetic Operators
 */
// 산술연산자, 4칙연산과 관련하여

let a = 12
let b = 34


/*:
 ## Unary Plus Operator
 ````
 +a
 ````
 */
// 전치연산자: 피연산자 앞에옴

+a
+b
// 사용되는 경우 없이 이론적인 내용
/*:
 ## Addition Operator
 ````
 a + b
 ````
 */
// +(더하기연산자)는 주로 두개의 숫자를 더하는 경우, 대부분 2항 연산자로 사용됨
  
a + b

/*:
 ## Unary Minus Operator
 ````
 -a
 ````
 */
// 빼기 단항, 양수 -> 음수 음수 -> 양수 바꿔줌

-a

/*:
 ## Subtraction Operator
 ````
 a - b
 ````
 */

a - b

/*:
 ## Multiplication Operator
 ````
 a * b
 ````
 */

a * b
/*:
 ## Division Operator
 ````
 a / b
 ````
 */

a
b
a / b // 몫을 리턴함, 정수 나누기에는 소수점 버림
b / a

// 실수일 경우
let c = Double(a)
let d = Double(b)

c / d
d / c


/*:
 ## Remainder Operator (Modulo Operator)
 ````
 a % b
 ````
 */

a % b
// c % d 실수끼리는 나머지 계산 지원 안함
c.truncatingRemainder(dividingBy: d) // 실수에서 나머지 구할 때
/*:
 ## Overflow
 */
// let num: Int8 = 9 * 9 * 9   스위프트에서는 오버플로우 허용 하지 않음
let num: Int = 9 * 9 * 9

// 오버플로우 연산자를 사용해야함
// 컴파일 타임에 발견할 수 없는 오류도 있음


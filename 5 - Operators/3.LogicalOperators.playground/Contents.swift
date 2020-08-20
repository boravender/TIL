
import UIKit

/*:
 # Logical Operators
 */
// 논리연산자, 참과 거짓을 구분하는 연산자
// 모든 피연산자가 Boolean(참/거짓) 표현식 => 연산의 결과도 Boolean
/*:
 ## Logical NOT Operators
 ````
 !a
 ````
 */
!true

let a = 12
let b = 34

!(a < b)

/*:
 ## Logical AND Operators
 ````
 a && b
 ````
 */
a > 30 && b % 2 == 0

true && true // 모든 피연산자가 true일 때만 true
true && false
false && true
false && false

/*:
 ## Logical OR Operators
 ````
 a || b
 ````
 */

a > 30 || b % 2 ==  0  // 어느 하나가 true면 됨

true || true
true || false
false || true
false || false
















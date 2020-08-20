
import UIKit

/*:
 # Overflow Operators
 */
// 오버플로우 연산자 (산술 오버플로우)

Int8.min
Int8.max


// let num: Int8 = Int8.max + 1  오버플로우로 컴파일 에러   // 1바이트의 공간


// 스위프트는 3개의 오버플로우 연산자를 제공함

/*:
 ## Overflow Addition Operator
 ````
 a &+ b
 ````
 */
let a: Int8 = Int8.max
let b: Int8 = a &+ //오버플로우 연산자 => 128이 아니라, -128이 출력됨 (값이 순환)

/*:
 ## Overflow Subtraction Operator
 ````
 a &- b
 ````
 */

let c: Int8 = Int8.min
let d: Int8 = c &- 1

/*:
 ## Overflow Multiplication Operator
 ````
 a &* b
 ````
 */
let e: Int8 = Int8.max &* 2 // 2




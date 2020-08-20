
//: [Previous](@previous)

import Foundation

/*:
 # Bitwise Left Shift Operator
 ````
 a << n
 ````
 ![lshift](lshift.png)
 */
// 비트와이즈 레프트시프트 연산자
// 1을 전달하면 왼쪽으로 한칸씩 이동 (새로 추가된 비트에는 0이 저장이 됨)

let a: UInt8 = 0b0010_0010  //34
a << 1          //68 (곱하기2)
0b0100_0100

a << 2          //136 (곱하기4)
a * 4     // 위의 코드와 아래의 코드는 결과는 같은데.. 위의 코드가 빨리 실행됨

// 곱하기와 같은 효과를 얻는다.
//: [Next](@next)

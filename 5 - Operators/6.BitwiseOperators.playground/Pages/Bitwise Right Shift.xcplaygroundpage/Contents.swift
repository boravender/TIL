
//: [Previous](@previous)

import Foundation

/*:
 # Bitwise Right Shift Operator
 ````
 a >> n
 ````
 ![rshift](rshift.png)
 */
// 비트가 오른쪽으로 밀려나고, 밀려난 비트는 사라짐
// (맨앞에 추가된 비트는 0이되고, 0이 안되는 경우도 있음)

let a: UInt8 = 0b0010_0010
a >> 1   // 나누기 2
a >> 2   // 나누기 4

// Unsigned 인티저에서는 부호비트를 고려할 필요가 없기 때문에, 비트연산이 단순함 (논리 시프트)



/*:
 ## Arithmetic Shift
 ![ashift](ashift.png)
 */
// Signed Integer - 논리시프트가 아니라, 산술 시프트를 실행해야함 (부호 비트를 잘 생각해야함)
// 가장 왼쪽에, 기존에 있던 Signed 비트가 채워짐 🎾 0은 0이 채워지고, 1은 1이 채워짐 🎾





//: [Next](@next)

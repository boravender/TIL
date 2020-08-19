

import UIKit

//: [Previous](@previous)
/*:
 # Integer Types
 
 ![IntegerTypes](integer-types.png)
 */
Int8.min
Int8.max

// 메모리공간의 크기를 알고싶을때
MemoryLayout<Int8>.size     // 1 byte

/*:
 ## Signed vs Unsigned
 
 ![SignedUnsigned](signed-unsigned.png)
 */
// Signed 양수, 0, 음수 모두 저장 가능
// Unsigned 양수, 0 저장 가능

Int8.min
Int8.max

UInt8.min
UInt8.max

/*:
 ## Int & UInt
 */
// Int 정수를 가장 빠르게 처리함

MemoryLayout<Int>.size    // 64비트 => 8바이트
Int.min
Int.max

let num = 123
type(of: num)

//: [Next](@next)

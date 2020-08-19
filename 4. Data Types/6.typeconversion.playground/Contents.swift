

import UIKit

/*:
 # Type Conversion
 
 ## Syntax
 ![TypeConversion](type-conversion.png)
 */
// 타입 컨버전(형 변환) VS 타입 캐스팅(형 변환)

// 1)타입 컨버전 => 메모리에 저장된 값을 다른 형식으로 바꿔서 새로운 값을 생성

// 2)타입 캐스팅 => 메모리에 저장된 값을 그래도 두고, 컴파일러가 다른형식으로 처리하도록 지시 (클래스 부분에서 상세하게 공부)

let a = 123
let b = 4.56

// a + b  서로 호환되지 않음

Double(a) + b // 123.0 + 4.56
a + Int(b) // 123 + 4

let c = Int8(a)

let d = Int.max
// let e = Int8(d) // 심각한 에러 발생 => 큰 자료형에서 작은 자료형으로 변환할 때는 조심해야함

let str = "123" // "number"
let num = Int(str) // 타입 컨버전에 실패했을 때 => nil 리턴될 수 있음


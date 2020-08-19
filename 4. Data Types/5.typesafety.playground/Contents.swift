
import UIKit

/*:
 # Type Safety
 */
// 형식 안정성


let str: String = 123 오류남
let num: Int = 12.34 정수와 실수도 엄격히 구분함

let a = 7
let b: Int8 = a // 호환되지 않음 (메모리 공간의 크기가 다름)
let c: Int64 = a // 메모리 공간의 크기가 같아도 담을 수 없음

// ** 자료형의 이름이 다르다면 무조건 호환되지 않음

let d = 12
let e = 34.56
let result = a + b // 정상적인 계산 불가

// ** 다른 타입끼리는 계산할 수 없음

let rate = 1.94
let amt = 10_000_000
let result = rate * Double(amt) // 오류발생 => 엄격하지만 컴파일 과정에서 확인 가능하여 안전한 코드

Int(rate * Double(amt))
Int(rate) * amt




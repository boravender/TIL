
import UIKit

/*:
 # Expression Pattern
 */

let a = 1

switch a {
case 0...10:   // 익스프레션 패턴을 통해서 ===> 정수와 범위가 매칭될 수 있도록 구현해두었기 때문에 가능한 일임
    print("0 ~ 10")
default:
    break
}

// 우리가 직접구현한 형식을 패턴매칭이나, 인터벌매칭에서 사용하는 것도 가능

0...10 ~= a


/*:
 ## Pattern Matching Operator(패턴 매칭 연산자)
 ````
 a ~= b
 ````
 */
// 패턴 매칭 연산자
struct Size {
    var width = 0.0
    var height = 0.0
    
    // ⭐️패턴매칭 연산자 오버로딩 해보기⭐️
                      // 패턴의 자료형      //밸류 익스프레션의 자료형
    static func ~=(left: Range<Int>, right: Size) -> Bool {
        return left.contains(Int(right.width))
    }
}

let s = Size(width: 10, height: 20)

switch s {
case 1..<9:
    print("1 ~ 9")
case 10..<99:
    print("10 ~ 99")
default:
    break
}


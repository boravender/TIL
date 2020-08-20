
import UIKit

/*:
 # Value Binding Pattern
 ## Syntax
 ![value-binding](value-binding.png)
 */

let a = 1

switch a {
case var x where x > 100:    // 바인딩 된 상수는 케이스블럭 내부에서만 사용가능 (주로 where절하고 같이 사용)
    x = 200
    print(x)
default:
    break
}


// 튜플 매칭에서도 자주 사용
let pt = (1, 2)

switch pt {
case let(x, y):   // 간단
    print(x, y)
case (let x, let y):
    print(x, y)
case (let x, var y):  // 일반적인 활용
    print(x, y)
case let(x, _):
    print(x)
}


 이런게 안됨
switch a {
case a > 100:
    print(a)
default:
    print(a)
}


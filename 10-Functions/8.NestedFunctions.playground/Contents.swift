
import UIKit
//함수 내부에 새로운 함수를 구현하는 방법에 대해 공부합니다.

/*:
 # Nested Functions
 */

func outer() -> () -> () {
    
    func inner() {     //다른 함수 안에 포함이 되면 "내포된 함수"임 ====> 호출할 수 있는 범위가 달라짐
        print("inner")
    }
    
    print("outer")
    
    return inner
}



outer()
//inner()


let f = outer()   //내포함수가 리턴됨 (함수에서 내포된함수를 리턴하면 내포된함수의 Scope가 함수를 호출한 범위로 확장됨)
f()   //리턴된 함수를 통해서 간접적으로 호출할 수 있게 된 것임

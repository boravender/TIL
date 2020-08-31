
import UIKit
//파라미터로 전달된 변수의 값을 함수 내부에서 직접 변경하는 방법에 대해 공부합니다.
/*:
 # In-Out Parameters
 */
// 입출력 파라미터   //변수의 값을 직접수정하는 것처럼 보이는
//파라미터로 전달된 변수의 값을 함수 내부에서 직접 변경하는 방법



var num1 = 12
var num2 = 34


func swapNumber(_ a: Int, with b: Int) { // 밸류 타입이기 때문에, 복사되서 전달
//    var tmp = a
//    a = b
//    b = tmp
}


swapNumber(num1, with: num2)





/*:
 ## Syntax
 ![inout-def](inout-def.png)
 ![inout-call](inout-call.png)
 */


func fixedSwapNumber(_ a: inout Int, with b: inout Int) {
    let tmp = a
    a = b
    b = tmp
}

num1
num2


fixedSwapNumber(&num1, with: &num2)   //앰퍼샌드를 꼭 붙여야함   // 입출력 파라미터는 카피 인, 카피 아웃 메모리 모드를 사용함
                                                            // 카피인 - 변수에 저장된 값을 복사해서 함수 바디 내부로 전달
                                                            // 카피아웃 - 함수가 종료될때, 아규먼트로 전달한 변수에 복사됨(함수 바디 내부에서 외부로 복사되어 전달)
num1
num2

// 1) 같은 값을 전달하는 것은 안됨(num1, num1안됨 -> 의미없음)
// 2) 상수(let)를 전달하는 것도 불가능
// 3) Literal전달하는 것 안됨
// 4) 기본값 선언을 허용하지 않음
// 5) 가변파라미터사용 불가능



//fixedSwapNumber(&12, with: &34)    //리터럴을 전달하는 것도 안됨(메모리 공간이 없음)





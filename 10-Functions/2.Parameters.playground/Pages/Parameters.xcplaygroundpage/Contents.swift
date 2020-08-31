
import UIKit
//파라미터를 통해 함수로 값을 전달하는 방법에 대해 공부합니다.
//- 파라미터 선언 문법
//- Formal Parameter와 Actual Parameter(Argument)
//- 기본값 선언
//- 파라미터의 가변성
//- 파라미터의 Scope와 Life Cycle
/*:
 # Parameters
 ![define](define.png)
 ![param](param.png)
 */
    
         // formal 파라미터 (함수에서 사용하는)
func add(a: Int, b: Int) -> Int  {
//    a = 12              // ⭐️파라미터는 임시상수이다.⭐️ (파라미터는 함수바디에서 사용할 수 있는 임시 상수)
    return a + b
}




/*:
 ## Calling Functions
 ![call](call.png)
 */

    // actual 파라미터 (함수 호출문에서 사용하는)  ===>  아규먼트/인자
add(a: 12, b: 34)




/*:
 ## Default Value
 ![defval](defval.png)
 */

// 파라미터의 기본값 설정하기

func sayHello(to: String = "Stranger") {  //기본값 설정
    print("Hello, \(to)")
}


sayHello(to: "Swift")
sayHello()



// 파라미터의 Scope ====> 함수의 바디로 제한됨

// 라이프사이클 ====> 함수의 실행이 완료되면 삭제됨












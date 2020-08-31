
import UIKit
//Argument Label에 대해 공부합니다.
//- Argument Label과 파라미터 이름의 차이
//- 함수 호출 문법
//- Wildcard 패턴
/*:
 # Argument Label
 */


/*:
 ## Syntax
 ![arg1](arg1.png)
 ![arg2](arg2.png)
 */


func sayHello(name: String) {
   print("Hello, \(name)")
}

        // 액츄얼 파라미터/아규먼트
sayHello(name: "Swift")



func sayHello(to name: String) {
    print("Hello, \(name)")
}

// 함수이름에 아규먼트 레이블이 포함되는 개념 ===> 그래서, 함수 이름이 같아도 에러가 나지 않는 것

sayHello(to: "Swift")


func sayHello(_ name: String) {
    print("Hello, \(name)")
}


sayHello("Swift")





// 함수이름의 가독성을 높이기 위함

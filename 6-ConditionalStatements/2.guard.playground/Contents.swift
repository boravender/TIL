
import UIKit

/*:
 # guard
 ## Syntax
 ![guard-syntax](guard-syntax.png)
 */
// Early Exit - 원하는 조건이 충족되지 않으면 불필요한 코드는 실행하지 않고, 일찍 종료한다는 개념

// 1. 깔끔한 코드를 위해 사용(중첩을 피할 수 있음)
// 2. else{ }  ===> 생략 불가능
// 3. guard문 내부에서는 반드시 코드의 실행을 중지 해야함(가드문을 호출한 스코프를 종료해야함)(주로 로컬 스코프에서 사용)
//    (함수에서는 ===> return )


func validate(id: String?) -> Bool {

    guard let id = id else {
        return false
    }

    guard id.count >= 6 else {
        return false
    }

    //하나의 가드문도 됨
//    guard let id = id, id.count >= 6 else {
//        return false
//    }

    return true
}




validate(id: nil)
// (첫번째 가드문에서 종료되어)제어가 전달이 되었다.

validate(id: "abc")

validate(id: "swiftlanguage")



func validateUsingIf(id: String?) {
    var idcheck: String?

    idcheck = id

    if let str = idcheck {
        if str.count >= 6{
            print(str)
        }
    }
}


func validateUsingGuard(id: String?) {
    var idcheck: String? = nil

    idcheck = id
    guard let str = idcheck else { return }
    guard str.count >= 6 else { return }

    print(str)
}


validateUsingIf(id: "cccccccccccc")

validateUsingGuard(id: "dddddddddddd")



let id = "10"


// 가드문은 조건을 확인하고 팅겨내는 역할 ===> 함수내에서 주로 사용
func validate() {
    guard id == "root" else { return }
    print("right")
}





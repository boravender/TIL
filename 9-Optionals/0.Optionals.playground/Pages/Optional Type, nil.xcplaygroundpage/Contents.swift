
import UIKit

/*:
 # Optionals
 */

let num: Int
//print(num)   //아무것도 저장되어있는 것이 없는데, 값을 출력



let optionalNum: Int? = nil    // 아무것도 저장하지 않겠다 => 추론할 형식이 없기 때문에 반드시 타입 어노테이션으로 초기화해야됨






/*:
 ## Optional Type
 ![optional-type-syntax](optional-type-syntax.png)
 */

let str: String = "Swift"
let optionalStr: String? = nil  //옵셔널 스트링

let a: Int? = nil  //옵셔널 인트

let b = a   // a는 identifier이자, 표현식    //⭐️옵셔널 표현식
b







//: [Next](@next)

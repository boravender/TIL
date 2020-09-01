
import UIKit

//클로저 표현식으로 클로저를 구현하는 방법에 대해 공부합니다.
//- Swift가 제공하는 세 가지 클로저
//- 클로저 표현식
//- 클로저 호출
//- 클로저를 사용하는 API 예제
/*:
 # Closures
 ![closure-expr](closure-expr.png)
 ![closure](closure.png)
 */

// 익명 함수 (이름이 없는 클로저)

//  { 클로저 헤드 in
//    클로저 바디 }


let c = { print("Hello, Swift") }    // 클로저 표현식은 글로벌 스코프에서 단독으로 작성할 수 없음
c()




let c2 = { (str: String) -> String in     //아규먼트 레이블을 따로 사용하지 않음
    return "Hello, \(str)"
}


let result = c2("Closure")  //클로저 호출시 아규먼트 레이블을 사용하지 않음
print(result)




typealias SimpleStringClosure = (String) -> String

func perform(closure: SimpleStringClosure) {
    print(closure("iOS"))
}

perform(closure: c2)


perform(closure: {(str: String) -> String in  //클로저 자체를 직접 아규먼트로 전달하는 것도 가능 (인라인 클로저)
    return "Hi, \(str)"
})










//: [Next](@next)

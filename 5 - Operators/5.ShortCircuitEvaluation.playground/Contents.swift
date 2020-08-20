import UIKit

/*:
 # Short-circuit Evaluation
 */
//스위프트가 조건식을 평가하는 방법 ("단락 평가" 방식을 사용)

//false &&    // 2번째 피연산자의 결과에 상관없이 false로 평가됨
//true ||     // 항상 참

//논리연산자들은 결과도출에 필요한 최소한의 논리식만 평가 => "단락평가"

var a = 1
var b = 1
func updateLeft() -> Bool {
    a += 1
    return true
}

func updateRight() -> Bool {
    b += 1
    return true
}

if updateLeft() || updateRight() { // Left가 참이면 Right은 실행하지 않음
    
}

a
b // 한번의 사이드 이펙트만 발생




// side effect 사이드 이펙트 (코드의 실행결과로 인해, 값 또는 상태가 변경되는 것)
// 사이드 이펙트를 고려하지 않고 코드를 작성하면, 의도와 다른 결과를 얻기 쉬움


// 논리연산자에서는 사이드 이펙트가 발생하면 안됨


// 따라서 아래처럼 바꾸는 것이 좋음

a = 1
b = 1

let resultA = updateLeft()
let resultB = updateRight()

if resultA || resultB {   // 결과만 사용하기 때문에 사이드이펙트는 발생하지 않음

}

a
b




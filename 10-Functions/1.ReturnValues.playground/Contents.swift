
import UIKit
//함수가 계산한 결과를 리턴하고 실행을 종료하는 방법에 대해 공부합니다.
/*:
 # Return Values
 ![return](return.png)
 */
// 특정기능을 수행

func add() -> Int {
    return 1 + 2
}

add()

let r = add()    //함수를 호출하는 것도 표현식 (표현식의 결과는 함수가 리턴하는 값)



if add() == 3 {
    print("three")
}


func doSomething() {
    let rnd = Int.random(in: 1...10)
    
    if rnd % 2 == 1 {
        print("odd number")
        return
    }
    
    print(rnd)
}

// return 키워드
// 1) 함수의 실행을 중지
// 2) 리턴 키워드 다음의 표현식을 평가한 다음에 그 결과를 리턴


doSomething()
doSomething()
doSomething()
doSomething()
doSomething()








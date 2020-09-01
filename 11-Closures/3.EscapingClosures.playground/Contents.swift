
import UIKit
//Escaping과 Non escaping 방식으로 클로저를 실행했는데 어떤 차이가 있는지 비교합니다.
/*:
 # Escaping Closure
 */
// 탈출하는 클로저 ====> 무엇으로부터 탈출하는지를 이해하는게 핵심

// Escaping Closure는 함수의 실행이 종료된 후에도 실행될 수 있는 Closure


func performNonEscaping(closure: () -> ()) {
    print("start")
    closure()
    print("end")
}


performNonEscaping {    // 탈출하지 않는 클로저 (함수의 실행흐름을 탈출하지 않음)
    print("closure")
}
          




func performEscaping(closure: @escaping () -> ()) {   // 원래는 함수의 실행이 종료되면 파라미터도 제거됨 ===> @escaping 키워드는 사라지지 않게함
    print("start")
    
    var a = 12    // @escaping ===> 1) 클로저가 함수의 실행흐름을 벗어날 수 있고, 2) 클로저가 캡처한 값(변수)이 클로저 실행이 완료될때까지 삭제되지 않음
                                                                          
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {   //3초뒤에 호출하기
        closure()
        print(a)            // (메모리 에러없이 정상적으로 실행되도록 함)
    }
    
    print("end")
}



performEscaping {
    print("closure")
}







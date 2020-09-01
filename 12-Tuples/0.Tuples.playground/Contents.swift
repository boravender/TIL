
import UIKit

// 두 개 이상의 값을 저장하는 Compound Type인 튜플에 대해 공부합니다.
//- 튜플 형식
//- 튜플 선언 문법
//- Explicit Member Expression
//- 튜플의 가변성

/*:
 # Tuples
 
 ## Tuple Expression
 ![tuple-expr](tuple-expr.png)
 */
// 하나의 상수에 두개의 값을 저장할 수 있을까?
// Int가 "스칼라 타입" ==> 하나의 값만 저장하는 타입
let i = (12, 34)

// 튜플 ===> 두개이상의 값 저장가능 "컴파운드 타입" (서로다른 형식의 값을 저장하는 것도 가능)



// 가상의 데이터를 저장해보기

let data = ("<html>", 200, "OK", 12.34)     // 멤버 "추가"/"삭제" 불가 ===> 튜플을 만들때 결정


data


/*:
 ## Explicit Member Expression
 ![eme](eme.png)
 */
// 점문법


data.0
data.1
data.2
data.3

// data.1 = 404   (let으로 선언되어있기 때문에 불가능)

var mutableTuple = data   // "밸류타입" 값이 복사되서 저장
// 가변성


mutableTuple.1 = 404    // 언네임드 튜플(이름이 없는) ===> 가독성 떨어짐
mutableTuple.1








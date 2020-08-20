
import UIKit

/*:
 # switch
 ## Syntax
 ![switch-syntax](switch-syntax.png)
 */

let num = 1 // 문장(statement), 특정 작업을 실행하는 코드 단위

num + 5

switch num { // 비교대상이 옴, 표현식(expression), 하나의 결과값으로 평가되는 코드 단위
case 1:  // 케이스블럭 하나이상 작성해야함  (반드시 한줄이상의 코드가 들어가야함)
   print("one")
case 2, 3:
   print("two or three")
default:  // 하나 꼭 작성(케이스블럭에서 모든 경우의 수 다루면.. 생략가능)
   print("others")   // break (만약에 아무 작업도 하고 싶지 않은 경우)
}

// 매칭되면 다른 블럭 실행시키지 않고 종료

var a = true



/*:
 ## Syntax
 ![where](where.png)
 */
// 패턴에 조건을 추가하는 문법
num

switch num {
case let n where n <= 10:   //패턴이 매칭 되었을때, 컨디션을 통해서 한번 더 확인(컨디션 true인 경우만 실행)
   print(n)
default:
   print("others")
}

// where절은 대부분 밸류바인딩 패턴과 함께 사용 (별도 강의)


//: [Next](@next)

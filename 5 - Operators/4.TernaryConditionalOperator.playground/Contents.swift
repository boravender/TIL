
import UIKit

/*:
 # Ternary Conditional Operator
 ## Syntax
 ![Syntax](syntax.png)
 */
// 3항 연산자

let hour = 12

hour < 12 ? "am" : "pm" // 2,3번째 자료형이 같아야 함 "am" : 123
                        
// if문으로 바꿀 수 있음
if hour < 12 {
    "am"
} else {
    "pm"
}

/*
 조건이 3개일 때
 hour < 11 "Good Morning"
 hour < 17 "Good Afternoon"
 "Good evening"
 */

hour < 11 ? "Good Morning" :
    (hour < 17 ? "Good Afternoon" : "Good Evening")

// 주로 조건 2개일때만 사용 => 가독성 떨어지기 때문











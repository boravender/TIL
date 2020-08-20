
import UIKit

// 사용자 정의 연산자
/*:
 # Custom Operators
 ![operator](operator.png)
 
 ### Reserved Tokens(단독으로 사용될 수없는 문자)
 (, ), {, }, [, ], ., ,, :, ;, =, @, #, &(prefix operator), ->, `, ?, !(postfix operator)
 */

//🎾 아래에 나열된 문자를 첫번째 문자로 사용해야함(유니코드의 일부문자도 사용가능)
/*:
 ### First Character(첫번째 문자)
 /, =, -, +, !, *, %, <, >, &, |, ^, ?, ~
 
 ### 연산자 메서드의 구현(사용할 곳에서)
 ![custom-operator](custom-operator.png)
 */
// 스위프트가 제공하지 않는 새로운 연산자 구현(사용자 정의 연산자)

// 가장먼저 연산자 선언해야함
// 모든 스코프에서 인식할 수 있도록! ====> 글로벌 스코프에서 선언

// 모든 특수문자를 연산자로 사용할 수 있는 것 아님
// 단독사용 불가능

// <규칙>
// 1.연산자를 가능한 단순한 형태로 선언해야함
// 2.기존에 있는 연산자와 함께 사용했을 때, 모호함이 없도록 선언해야함



//선언
prefix operator +++

//사용
extension Int {
    static prefix func +++(num: inout Int) {
        num += 2
    }
}

var a = 1
+++a
a


extension Int {
    static func *+*(left: Int, right: Int) -> Int {
        return (left * right) + (left * right)
    }
}

1 *+* 2
//1 *+* 2 + 3     // 우선순위 그룹의 지정을 안했기 때문에 에러발생
(1 *+* 2) + 3


/*:
 # Precedence Groups
 ![precedence-group](precedence-group.png)
 
 [Operator Declarations]:
 https://developer.apple.com/documentation/swift/operator_declarations "Operator Declarations"
 
 [Operator Declarations]
 
 ![precedence-group-syntax](precedence-group-syntax.png)
 
 ![precedence-group-declaration](precedence-group-declaration.png)
 */
// 어떤연산자를 먼저 실행할지: 우선순위그룹 (우선순위가 높은 그룹에 속한 연산이 먼저 실행)

// 이항연산자의 경우 ====> 우선순위 그룹을 지정 해야함
// 이미선언되어있는 우선순위 그룹을 사용하거나, 새로선언할 수 있음

// 스위프트에는 다양한 우선순위 그룹이 선언되어 있음

// 우선순위 그룹은 이항연산자를 선언할때, 함께 선언
// 생략하면 "DefaultPrecedence"그룹에 추가됨
// (단독사용할때는 문제가 없지만, 다른 연산자와 함께 사용할 경우 에러가 발생)



//새로운 우선순위그룹 만들기 (어퍼카멜케이스로)
/*
 predencegroup Name {        //대문자로 시작
    higherThan: LowerGroupName    // 우선순위가 낮은 그룹 지정   //둘중에 한개는 반드시 사용
    lowerThan: HigherGroupName    // 우선순위가 높은 그룹 지정
    associativity: associativity   // 연산자의 결합규칙 (left/right/none) ==> 생략: none
 }
 */



precedencegroup MyPrecedence {
    higherThan: AdditionPrecedence
}

infix operator *=*: MyPrecedence

extension Int {
    static func *=*(left: Int, right: Int) -> Int {
        return (left*right) + (left*right)
    }
}

1 *=* 2 + 3     // 우선순위 그룹의 지정을 했기 때문에 에러발생하지 않음






import UIKit

/*:
 # Operator Methods
 ## Syntax
 ![syntax](syntax.png)
 */
// 연산자 메서드 문법

"a" == "a"     // "=="이퀄투 연산자가 문자열을 비교할수 있도록 구현되어 있기 때문에 가능


struct Point {
    var x = 0.0
    var y = 0.0
}


let p1 = Point(x: 12, y: 34)
let p2 = Point(x: 67, y: 89)

//p1 == p2 // 두 인스턴스를 어떻게 비교할지 모름



// 연산자 메서드 문법은 타입메서드와 유사함
// 메서드이름 위치에 연산자가 오는 점을 제외하면, 나머지 부분에는 차이가 없음.
// 연산자메서드는 새로운 연산자를 만드는 것은 아님. 이미 존재하는 연산자가 새로운 피연산자를 처리할 수 있도록 확장
// 그래서, 연산자부분에는 반드시 이미 존재하는 연산자가 와야함
// (새로운 연산자를 구현할 때는 커스텀 오퍼레이터로 구현)

// 주의할점
// 연산자가 가지고 있는 우선순위와 결합규칙을 바꾸지 않는다.
// 가능한 원래의 기능과 동일하거나, 유사한 형태로 구현

// 예, == (이퀄투연산자)는 두 대상을 비교하도록 구현해야함
// 값을 변경하거나 다른방식으로 구현하더라도 컴파일 에러는 발생하지 않으나 코드의 가독성이 떨어지고
// 논리적인 오류가 발생할 가능성이 높아짐

// 연산자 메서드는 이미 존재하는 연산자의 파라미터와 리턴형을 일치시켜야함
// ==(이퀄투연산자)는 Boolean을 리턴하는데, Int, String을 리턴하도록 구현하면 안됨

// 스위프트가 제공하는 대부분의 연산자를 연산자메서드로 구현할 수 있지만,
// 3항 연산자와 할당연산자는 허용되지 않음

// 보통 익스텐션으로 구현함
// Equatable 프로토콜을 채용하고, 여기에 선언되어있는 메서드를 연산자 메서드로 구현

extension Point: Equatable {
    static func ==(lhs: Point, rhs: Point) -> Bool {  //파라미터 형식을 Point로 선언
        return (lhs.x == rhs.x) && (lhs.y == rhs.y)   //포인트 구조체에 있는 개별 속성을 비교하도록 구현
    }
}
// 주석처리 해도, 연산자 메서드를 구현하지 않았는데도, 에러가 나지 않는다.
// Point구조체를 보면, Double형식의 저장속성이 선언되어 있기 때문에.. ==(이퀄투연산자)로 비교가능.
// Equatable프로토콜을 채용하고 있기 때문에

// 형식에 Equatable프로토콜을 채용한 저장속성만 선언되어 있다면, 컴파일러가 자동으로 구현을 추가함.
// Equatable 프로토콜을 채용하는 것만으로도 충분 ====> 🎾컴파일러가 자동으로 추가해줌


p1 == p2
p1 != p2

// 열거형에 연관값이 선언되어 있지 않거나, 연관값이 Equatable프로토콜 채용하고 있는 경우에도
// Equatable프로토콜 구현이 자동으로 추가됨


// 단항 -연산자를, 연산자메서드로 구현
extension Point {
    // 키워드를 통해서 연산자 위치를 선언해야함
    static prefix func -(pt: Point) -> Point {
        return Point(x: -pt.x, y: -pt.y)
    }
}

let  p3 = -p1
p3.x
p3.y


// 증가연산자 구현해보기

extension Point {
    static postfix func ++(pt: inout Point) -> Point {
        let ret = pt
        pt.x += 1
        pt.y += 1
        return ret
    }
}

var p4 = Point(x: 1.0, y: 2.0)
let p5 = p4++
p5.x    // p5에 증가된 값이 저장된 것이 아니라.... p5는 원래 그대로의 값
p5.y

p4.x    // p4에 증가된 값이 저장되었음...
p4.y



// 한개의 파라미터를 입출력 파라미터로 선언해야함
extension Point {
    static func +=(lhs: inout Point, rhs: Double) -> Point {
        lhs.x += rhs
        lhs.y += rhs
        return lhs
    }
}

p4 += 1
p4.x
p4.y


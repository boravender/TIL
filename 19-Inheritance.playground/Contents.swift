import UIKit

/*
 
 ** Inheritance(상속)
 class className: SuperClassName
 final class를 상속하는 것은 불가
 
 ** Overriding
 subClass 구현에 맞게 변경 가능
 1) superClass 구현을 기반으로 새로운 코드를 추가하거나,
 2) superClass 구현을 무시하고 완전히 새롭게 구현
 
 * 속성은 method와 override하는 방식이 다름
 1) 계산속성을 구현하거나,
 2) property observer 추가하는 방식
 3) 읽기/쓰기가 가능한 속성을 읽기전용으로 override 허용되지 않음
 
 ** Upcasting & Download casting
 Upcasting => SubClass instance를 SuperClass 형식으로 저장하는 것, 안전하고 항상 성공
 Downcasting => Upcasting된 instance를 원래 형식으로 처리하기 위해 필요, 에러 발생할 수 있음
 
 ** Type Casting
 타입 체크 연산자
 expr is Type => 두 피연산자의 형식이 동일하다면 true return(runtime에 type check)
 타입 캐스팅 연산자
 => 호환되면 오른쪽 형식으로 캐스팅된 인스턴스를 리턴
 새로운 인스턴스가 리턴되는 것은 아니고, 이미 존재하는 인스턴스에서 오른쪽 피연산자 형식에 있는 멤버만 접근할 수 있는 임시 인스턴스를 리턴
 expr as Type => compile time cast(서로 호환되는 형식을 캐스팅, Bridging)
 expr as? Type => runtime cast(Conditional Cast) 성공하면 casting 된 instance return / 실패하면 nil return
 expr as! Typer => runtime cast(Forced Cast) 실패하면 crash 발생
 
 ** Any, AnyObject
 Any => 모든 형식(값형식+참조형식)을 저장할 수 있고
 AnyObject => 모든 class 형식을 저장할 수 있음
 남용하면 코드의 가독성이 떨어지고 유지보수가 어려워지기 때문에 가능하면 사용하지 않는 것이 좋음
 
 ** Overloading
 하나의 형식에서 동일한 이름을 가진 다수의 멤버를 구현할 때 사용 / Function, Method, Subscript, Initializer 적용 가능
 1) 함수 이름이 동일하면 선언된 파라미터 수로 식별
 2) 함수 이름, 파라미터 수가 동일하면 파라미터 자료형으로 식별
 3) 함수 이름, 파라미터가 동일하면 Argument Label로 식별
 4) 함수 이름, 파라미터, Argument Label이 동일하면 리턴형으로 식별(함수 이름을 바꾸는 게 나음)
 
 */

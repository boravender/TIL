import UIKit

/*
 
 ** Defining Protocols
 형식에서 공통적으로 제공하는 멤버 목록(작업지시서) => 실제 구현은 클래스와 구조체가 구현
 Protocol은 다중 Inheritance 지원
 Protocol이 Anyobject를 Inheritance하면 => Class 전용 Protocol로 선언됨
 
 ** Property Requirements
 Protocol에서는 항상 var로 선언(가변성과 상관없고 속성이라는 것을 나타냄)
 get, set Keyword가 가변성을 결정
 형식속성으로 선언할 때는 static Keyword 추가
 
 ** Method Requirements
 Method 헤드 부분만 작성({}, Method Body는 포함되지 않음)
 Protocol을 값형식에 채용할 수 있고, Method 내부에서 속성값을 변경해야 한다면 mutating Keyword 추가해야함
 
 ** Initializer Requirements
 Method와 마찬가지로 Body 생략, Failable Initializer 선언 가능
 
 ** Subscript Requirements
 
 */

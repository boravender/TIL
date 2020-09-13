import UIKit

/*
 
** Protocol Types
 Protocol을 Type으로 사용가능(Super Class Type으로 저장하는 Up-Casting과 유사)
 
* Protocol Conformance(적합성)
 1) is 연산자: 형식이 프로토콜을 채용하고 있는지 확인
 2) as 연산자: Instance를 Protocol 형식으로 Casting 하거나, Protocol 형식에 저장된 Instance를 실제 형식으로 Casting 할 때 사용
 => Instance를 Protocol 형식으로 Casting 할 때는 Compile Time(as) / Runtime Cast(as?,as!) 모두 사용할 수 있으나,
 원래 형식으로 Casting 할 때는 Runtime Cast로만 가능함
 
 * Collections of Protocol Types
 Protocol을 사용해서 Inheritance와 유사한 패턴을 구현할 수 있음
 
 ** Protocol Composition(병합)
 두개 이상의 Protocol을 &로 연결하면 임시 Protocol로 처리됨(새로운 Protocol 형식이 생성되는 것은 아님)
 Protocol 병합에 Class를 추가하면, 모든 Sub Class를 저장할 수 있음
 
 ** Optional Protocol Requirements
 1) @objc Attribute => Swift로 작성한 코드를 Objective-c에서 사용할 수 있게 해주는 Attribute
 2) optional Modifier(수정자) => 선택적 멤버로 선언할 때 사용
 @objc Attribute로 선언하면, 자동으로 AnyObject Protocol이 상속됨 => Class 전용
 
 ** Protocol Extension
 Protocol Extension으로 Protocol을 채용한 모든 형식에 기본 구현을 제공할 수 있음
 코드 중복을 줄이면서 Protocol Requirements를 충족시킬 수 있다는 장점이 있음
 
 */

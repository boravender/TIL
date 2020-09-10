import UIKit

/*
 
 ** Initializer(생성자)
 모든 속성을 기본값으로 초기화해서 인스턴스를 기본상태로 만드는 것
 
 * Memberwise Initializer
 구조체는 Memberwise Initializer를 제공(파라미터를 통해 모든 속성을 초기화)
 
 ** Designated Initializer(지정 생성자)
 모든 속성을 초기화해야함
 Super Class의 Initializer를 호출해야함
 
 * Convenience Initializer
 필요한 속성만 초기화한 다음, 클래스에 있는 다른 이니셜라이저를 호출해서 나머지 초기화를 완료하도록 구현
 Super Classd의 Initializer를 직접 호출할 수 없음
 
 * Intializer Inheritance
 Super Class 에서 구현한 Initializer는 Sub Class로 상속되지 않음 => 상속된 Initializer가 일부 속성만 초기화 하는 것을 막기 위함
 1) Sub Class의 모든 속성이 기본값으로 초기화 되어있고, 지정생성자를 직접 구현하지 않았다면 Super Class에 있는 모든 지정 생성자가 상속됨
 2) Sub Class가 모든 지정생성자를 상속받았거나, 재정의했다면 모든 Convenience Initializer가 상속됨
 
 ** Required Initializer(필수 생성자)
 Sub Class에서 반드시 동일한 Initializer를 구현해야함
 Sub Class의 모든 속성이 기본값을 가지고 있고, Initializer를 직접 구현하지 않은 경우 필수 생성자가 상속됨
 
 ** Initializer Delegation(대리, 위임)
 * Value Type
 상속 불가능, Initializer Type이 하나이기 때문에 상대적으로 단순함
 ⭐️모든 Property를 Initialized하는 하나의 Initializer를 구현하고, 다른 Initializer가 호출하는 것이 좋음
 
 * Class Type
 상속 가능, ⭐️상속 계충을 따라 올라가면서 모든 Initializer가 올바른 순서로 호출되도록 구현하는 것이 매우 중요
 1) Designated Initializer는 반드시 Super Class의 Designated Initializer(Delegate UP)를 호출해야 함
 2) Convenience Initializer는 동일한 Class에 있는 다른 Initializer를 호출해야함(Delegate Across)
 3) Convenienee Initializer를 호출했을 때, 최종적으로 동일한 Class에 있는 Designated Initializer가 호출되어야 함
 
 Class Initialized 방식
 1) 선언되어 있는 모든 속성이 초기화됨, 서브클래스에서 슈퍼클래스 순으로 상속계층을 따라서 위로 올라감
 "모든 속성이 초기화" 되면 첫번째 단계가 완료되고 인스턴스의 유효성이 확보됨
 2) 첫번째 단계에서 할 수 없었던 부가적인 초기화 작업을 슈퍼클래스에서 서브클래스 순으로 내려옴
 인스턴스 속성에 접근하거나 매서드를 호출하는 것도 가능
 
 ** Failable Initializer
 Initializer의 Optional Version
 init? => 초기화에 성공하면 초기화된 Instance가 Optionla Type으로 return됨 / fail하면 nil return
 init! => non-Optional Type return / fail하면 crash 발생
 
 상속 관계에서도 슈퍼클래스의 failable/non-failable 여부는 구분하지 않음
 overloading도 자유로움
 슈퍼클래스에 있는 failable Initializer를 서브클래스에서 failable/non-failable overriding 가능
 단, 서브클래스에서 non-failable이면, 상위 구현을 호출할 때 강제추출연산자를 사용해야함
 
 ** Deinitializer(소멸자)
 instance가 memory에서 제거되기 전에 부가적인 정리 작업을 구현하기 위해서 사용
 파일 연결이나, 네트워크 연결처럼 자동으로 정리되지 않는 리소스를 연결하거나 인스턴스 해제를 확인하는 것처럼 디버깅 용도로 활용됨
 
 */

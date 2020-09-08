import UIKit

/*
 
 ** Stored Properties(저장속성)
 1) 변수(var) 저장속성
 2) 상수(let) 저장속성 => 인스턴스 초기화되면 값 변경 불가
 
 * Lazy Stored Properties(지연 저장속성)
 인스턴스가 초기화되는 시점이 아닌, 속성에 처음 접근하는 시점에 초기화
 => 그래서 항상 변수로 선언해야함 ❗️lazy var
 
 ** Computed Properties(계산속성)
 메모리 공간을 가지지 않아, 속성에 접근할때마다 다른 값이 리턴될 수 있음 => 항상 var로 선언
 1) 다른 속성에 저장된 값을 읽어서 필요한 계산을 실행한 후 리턴 (getter)
 2) 속성으로 전달된 값을 다른 값에 저장 (setter)
 
 * Read-only Computed Properties(읽기전용)
 get block, {} 생략 가능
 
 ** Property Observer(속성 감시자)
 1) willSet => 속성에 값이 저장되기 직전에 호출, 새로 전달되는 값음 파라미터로 전달됨(newValue)
 2) didSet => 값이 저장된 직후에 호출, 이전 값이 파라미터로 전달됨(oldValue)
 3) 변수 저장속성에 추가할 수 있음
 
 ** Type Properties(형식속성)
 TypeName.PropertyName => 반드시 형식의 이름으로 접근
 ❗️속성에 처음 접근하는 순간 초기화됨
 1) 모든 인스턴스가 동일한 속성을 가지고 있을 때
 2) 변수로 선언하여 인스턴스 갯수를 셀때도 사용
 
 ** Self
 1) self 키워드는 현재 인스턴스에 접근하기 위해 사용하는 특별한 속성
 2) self를 타입 멤버에서 사용하면 인스턴스가 아닌 형식(틀) 자체를 나타냄
 
 * Super
 self 표현식과 유사, class에서만 사용
 
 */

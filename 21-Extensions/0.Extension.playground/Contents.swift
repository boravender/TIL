
import UIKit

//익스텐션으로 형식을 확장하는 방법을 공부합니다.
//- 익스텐션 문법 - 확장 가능한 멤버 종류 - 구조체 확장 - 프로토콜 구현 추가



// 클래스, 구조체, 열거형, 프로토콜 모두 확장(Extension)이 가능
// 형식 선언에 새로운 멤버를 추가하는 것은 아니고, 새로운 멤버를 별도의 코드조각으로 구현해 형식과 연관시켜서, 기존멤버와 함께 사용하는 것

// 형식선언이 포함되어있는 코드를 수정할 수 없는 경우에도 문제없이 확장할 수 있음
// Int, String과 같은 기본 자료형은 실제로 구조체로 구현 ===> 애플이 제공한 라이브러리를 직접수정할 수는 없지만 extension을 통해,
// 기본 자료형에 새로운 멤버를 추가하는 것은 가능

// 확장으로 멤버를 추가하는 것은 가능하지만, 기존 멤버를 오버라이딩하는 것은 불가능(재정의가 필요하다면 상속을 통해 서브클래싱 해야함)
/*:
 # Extension
 ![syntax](extension.png)
 ![syntax2](extension-protocol.png)
 */
// Type =====> 기존에 존재하던 형식이름이 와야함
// 클래스 확장의 경우, 간편생성자(convenience)만 추가할 수 있음
// 지정생성자와 소멸자는 반드시 원본 형식에서 구현해야함

// 확장으로, 생성자를 추가할때는 생성자 델리게이션이 정상적으로 실행되도록 구현하는 것이 중요


// 프로토콜 구현 추가가능


struct Size {
    var width = 0.0
    var height = 0.0
}

extension Size {   // 계산 속성만 추가가능, 저장속성은 확장불가
    var area: Double {
        return width * height  // read only (get)
    }
}


let s = Size()
s.width
s.height
s.area      // 익스텐션으로 추가한 속성



extension Size: Equatable {  // 비교기능 추가
    public static func ==(lhs: Size, rhs: Size) -> Bool {
        return lhs.width == rhs.width && lhs.height == rhs.height
    }
}


extension Int {
    
}

extension String {
    
}


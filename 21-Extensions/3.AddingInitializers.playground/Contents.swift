
import UIKit

// 익스텐션으로 생성자를 추가하는 코드를 작성합니다.
//- Date 형식에 년,월,일로 초기화 하는 생성자 추가
//- UIColor 클래스에 RGB 파라미터를 받는 생성자 추가
//- 익스텐션으로 생성자를 구현할 때의 장점

/*:
 # Adding Initializers
 */
// 스위프트에서 원하는 날짜를 생성하려면, 캘린더와 데이트 component를 사용해야하기 때문에, 코드가 조금 복잡함
// 연, 월, 일을 파라미터로 받아서, 날짜를 생성하는 생성자를 Extension으로 추가해보기


// 전달된 파라미터를 통해 날짜를 생성할 수없는 경우도 있기 때문에 failable이니셜라이저로 구현

extension Date {     // 구조체라서, 생성자 추가 코드 구현 가능(클래스는 convenience생성자만 추가가능)
    init?(year: Int, month: Int, day: Int) {
        let cal = Calendar.current
        var comp = DateComponents()
        comp.year = year
        comp.month = month
        comp.day = day
        
        guard let date = cal.date(from: comp) else {
            return nil
        }
        
        self = date   // date는 구조체로 구현되어있기 때문에, self에 새로운 인스턴스를 할당하는 방식으로 초기화가능
    }
}


Date(year: 2014, month: 4, day: 16)



// UIColor 클래스에 새로운 생성자를 추가해보기
// extension으로 class에 생성자를 추가할때는 반드시 간편생성자로 구현해야함
// UIColor는 RGB값을 0.0 ~ 1.0 사이의 값으로 처리 ===> 주로 0 ~ 255값으로 표현


extension UIColor {
    convenience init(red: Int, green: Int, blue: Int)  {   // 파라미터 검증하지 않고 있음
        self.init(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: 1.0)
    }
}


UIColor(red: 0, green: 0, blue: 255)


// 디폴트 이니셜라이저, 멤버와이즈 이니셜라이저와 관련된 내용


// 모든 속성이 기본값, 생성자 직접구현하지 않음 ===> 파라미터가 없는 기본 생성자 제공
struct Size  {
    var width = 0.0
    var height = 0.0
    
    // 나중에 구조체에 생성자를 추가한다면 ======> 자동으로 제공되던 생성자가 제공이 안됨 (기본, 멤버와이즈)
//    init(value: Double) {
//        width = value
//        height = value
//    }
}

extension Size {   // ==> 아래의 에러가 사라짐 ==> 익스텐션으로 생성자를 추가하면, 기본제공 생성자와 함께 사용 가능
    init(value: Double) {
        width = value
        height = value
    }
}


// 멤버와이즈 이니셜라이저도 제공
Size()
Size(width: 12, height: 34)



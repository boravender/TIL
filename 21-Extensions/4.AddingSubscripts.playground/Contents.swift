
import UIKit

//익스텐션으로 서브스크립트를 추가하는 코드를 작성합니다.
//- String 형식에 정수 인덱스를 처리하는 서브스크립트 추가
//- Date 형식에 컴포넌트를 리턴하는 서브스트립트 추가


/*:
 # Adding Subscripts
 */

extension String {
    subscript(idx: Int) -> String? {
        guard (0..<count).contains(idx) else {   // 일단 범위내에 있는지 확인
            return nil
        }
        let target = index(startIndex, offsetBy: idx)   // 정수를 String 인덱스로 바꾸기
        return String(self[target])     // 형식에 구현되어있는 다른 서브스크립트 호출 ===> self
    }
}


let str = "Swift"
str[1]  // "w"
str[100]    // nil




extension Date {
    subscript(component: Calendar.Component) -> Int? {
        let cal = Calendar.current
        return cal.component(component, from: self)
    }
}

let today = Date()
today[.year]
today[.month]
today[.day]


import UIKit

//익스텐션으로 계산 속성을 추가하는 코드를 작성합니다.
//- Date 형식에 년도를 리턴하는 속성 추가
//- Double 형식에 라디안/디그리 변환 속성 추가

/*:
 # Adding Properties
 */
// 익스텐션으로 추가할 수 있는 속성은, 계산속성으로 제한됨
// 저장 속성을 추가하거나, 프로퍼티 옵저버(속성 감시자)를 추가하는 것은 불가능 함
// (형식에 존재하는 속성을 오버라이딩하는 것도 불가능)


extension Date {        // 날짜를 처리하는 형식
    var year: Int {
        let cal = Calendar.current
        return cal.component(.year, from: self)  // 속성내부에서 날짜 인스턴스에 접근 ===> self
    }
    
    var month: Int {
        let cal = Calendar.current
        return cal.component(.month, from: self)
    }
}


let today = Date()      // 현재날짜

print(today)
today.year
today.month         // month 속성 없기 때문에 컴파일 에러 발생



// Double형식에 radian(호도 = 180/π)과 degree(도 = pi/180)변환속성 추가해보기

extension Double {
    var radianValue: Double {
        return (Double.pi * self) / 180.0
    }
    
    var degreeValue: Double {
        return self * 180.0 / Double.pi
    }
}


let dv = 45.0
dv.radianValue      // 0.7853981633974483
dv.radianValue.degreeValue      // 더블형식으로 선언되어있기 때문에 연달아 쓰는 것도 가능 ===> 45




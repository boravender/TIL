
import UIKit

//익스텐션으로 메소드를 추가하는 코드를 작성합니다.
//- Double 형식에 화씨/섭씨 온도 변환 메소드 추가
//- Date 형식에 문자열 포멧팅 메소드 추가
//- String 형식에 랜덤 문자열 생성 메소드 추가

/*:
 # Adding Methods
 */
extension Double {
    // 화씨온도로 변환
    func toFahrenheit() -> Double {
        return self * 9 /  5 + 32
    }
    
    // 섭씨온도로 변환
    func toCelsius() -> Double {
        return (self - 32) * 5 / 9
    }
    
    // 타입메서드
    static func converToFahrenheit(from celsius: Double) -> Double {
        return celsius.toFahrenheit()   // 인스턴스메서드를 호출하면 코드가 단순해짐
    } // 만약 공식을 수정한다면, 인스턴스메서드만 수정하면 되기 때문에 유지보수도 수월함
    
    
}



let c = 30.0
c.toFahrenheit()


Double.converToFahrenheit(from: 30.0)   // 타입메서드 호출




// 날짜를 문자열로 포매팅하는 메서드 추가해보기

extension Date {
    func toString(format: String = "yyyyMMdd") -> String {
        let privateFormatter = DateFormatter()  // DateFormatter 날짜바꾸기 객체
        privateFormatter.dateFormat = format   // dateFormat(날짜 형식) 설정  =====> "yyyyMMdd"
        return privateFormatter.string(from: self)   // 날짜 =====> 문자열로
    }
}

let today = Date()
today.toString()    // 파라미터 생략시 ====> 기본값

today.toString(format: "MM/dd/yyyy")   // 파라미터 전달시 ====> 전달된 포맷으로 리턴됨




// 지정된 길이의 랜덤문자열을 생성하는 메서드를 String형식에 추가해보기

extension String {
    static func random(length: Int, charactersIn chars: String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789") -> String {
        
        var randomString = String()     //
        randomString.reserveCapacity(length)   //문자열 길이만큼 메모리 확보
        
        for _ in 0..<length {
            guard let char = chars.randomElement() else {
                continue
            }
            
            randomString.append(char)
        }
        
        return randomString
    }
}


String.random(length: 5)  // 랜덤문자열 리턴

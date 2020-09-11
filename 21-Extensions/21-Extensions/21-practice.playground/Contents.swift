import UIKit

// ** Extension
struct Size {
    var width = 0.0
    var height = 0.0
}

extension Size { // 계산속성만 추가 가능
    var area: Double {
        return width * height
    }
}

let s = Size()
s.width
s.height
s.area // extension으로 추가한 속성



// * Adding Properties

// year, month 뽑아내기
extension Date {
    var year: Int {
        let cal = Calendar.current
        return cal.component(.year, from: self)
    }
    
    var month: Int {
        let cal = Calendar.current
        return cal.component(.month, from: self)
    }
}


let today = Date()
today.year
today.month


// Double 형식에 radian, degree Property 추가
extension Double {
    var radianValue: Double {
        return (Double.pi * self ) / 180.0
    }
    
    var degreeValue: Double {
        return self * 180.0 / Double.pi
    }
}

let dv = 45.0
dv.radianValue
dv.radianValue.degreeValue // Double Type으로 선언되어 있기 때문에 연달아 쓰는 것도 가능


// * Adding Methods
extension Double {
    // 화씨온도로 변환
    func toFahrenheit() -> Double {
        return self * 9 / 5 + 32
    }
    
    // 섭씨온도로 변환
    func toCelsius() -> Double {
        return (self - 32) * 5 / 9
    }
    
    static func converToFahrenheit(from celsius: Double) -> Double {
        return celsius.toFahrenheit()
    } // Instance Method를 호출하면 코드가 단순해짐, Instance Method만 수정하면 되기 때문에 유지보수도 수월함
}

let c = 30.0
c.toFahrenheit()

Double.converToFahrenheit(from: 30.0) // Type Method 호출


// 날짜를 문자열로 Formatting하는 Method 추가

extension Date {
    func toString(format: String = "yyyyMMdd") -> String {
        let privateFormatter = DateFormatter() // DateFormatter 날짜바꾸기 객체
        privateFormatter.dateFormat = format // dateFormat(날짜 형식) 설정 => "yyyyMMdd"
        return privateFormatter.string(from: self) // 날짜 => String
    }
}


let today1 = Date()
today1.toString()
today1.toString(format: "MM/dd/yyyy")



// 지정된 길이의 랜덤 문자열을 생성하는 매서드를 String 형식에 추가해보기

extension String {
    static func random(length: Int, charactersIn chars: String = "abcdefghijklmnopqrstuvwxyz") -> String {
        
        var randomString = String()  //""
        randomString.reserveCapacity(length) // 문자열 길이만큼 메모리 확보
        
        for _ in 0..<length {
            guard let char = chars.randomElement() else {
                continue
            }
            
            randomString.append(char)
        }
        
        return randomString
    }
}

String.random(length: 5)



// * Adding Initializers
// 연, 월, 일을 Parameter로 받아서, 날짜를 생성하는 Initializer 추가해보기
// 전달된 파라미터를 통해 날짜를 생성할 수 없는 경우도 있기 때문에 failable Initializer로 구현
extension Date {
    init?(year: Int, month: Int, day: Int) {
        let cal = Calendar.current
        var comp = DateComponents()
        comp.year = year
        comp.month = month
        comp.day = day
        
        guard let date = cal.date(from: comp) else {
            return nil
        }
        
        self = date // date는 struct이기 때문에, self에 새로운 Instance를 할당하는 방식으로 초기화가능
    }
}

let today2 = Date(year: 2014, month: 4, day: 16)


//UIColor는 RGB값을 0.0 ~ 0.1 사이의 값으로 처리 => 0 ~ 255 값으로 표현 가능하도록 구현

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: 1.0)
    }
}

UIColor(red: 0, green: 0, blue: 255)


// * Default Initializer, Memberwise Initializer
// 모든 속성이 기본값이 있다면 생성자 구현하지 않음 => 파라미터가 없는 기본 생성자 제공
struct Size1 {
    var width = 0.0
    var height = 0.0
    
    // 구조체에 생성자를 추가하면 자동으로 제공되던 생성자가 제공 안됨
//    init(value: Double) {
//        width = value
//        height = value
//    }
}

extension Size1 {
    init(value: Double) {
        width = value
        height = value
    }
}

// Default, Memberwise, 직접 구현한 Initializer 모두 제공
Size1()
Size1(width: 12, height: 34)
Size1(value: 56)


// * Adding Subscripts
extension String {
    subscript(idx: Int) -> String? {
        guard (0..<count).contains(idx) else { // 글자수보다 작은 숫자인지 확인
            return nil
        }
        
        let target = index(startIndex, offsetBy: idx)
        return String(self[target])
    }
}



let str = "Swift"
str[1]
str[100]



extension Date {
    subscript(component: Calendar.Component) -> Int? {
        let cal = Calendar.current
        return cal.component(component, from: self)
    }
}

let today3 = Date()
today3[.year]
today3[.month]
today3[.day]


import UIKit

// ** Stored Properties

struct Person {
    let name: String = "Jenny"
    var age: Int = 23
}

let p = Person()

p.name
p.age

// p1.age = 30 상수에 저장했기 때문에 구조체의 모든 속성이 상수가 됨



// ** Lazy Stored Properties

struct Image {
    init() {
        print("new image")
    }
}

struct BlogPost {
    let title = "Title"
    let content = "Content"
    lazy var attachment: Image = Image() // 1) 메모리 공간을 많이 차지하는 경우
    
    
    let date: Date = Date()
    
    lazy var formmateedDate: String = { // 2) 초기화 시점이 늦기 때문에 먼저 초기화된 속성에 접근 가능
        let f = DateFormatter()
        f.dateStyle = .short
        f.timeStyle = .short
        return f.string(from: date)
    }() // 클로저 뒤에 괄호가 있기 때문에 실행 후 리턴 값을 저장함 (괄호 없으면 함수형)
}

// let post = BlogPost()
var post = BlogPost() // 구조체를 let으로 선언하면 모든 속성이 상수가 되서 lazy var가 될 수 없음

post.formmateedDate

post.attachment



// ** Computed Properties
class Person1 {
    var name: String
    var yearOfBirth: Int
    
    init(name: String, year: Int) {
        self.name = name
        self.yearOfBirth = year
    }
    
    var age: Int {
        get {
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now) // 현재 날짜에서 연도 추출
            return year - yearOfBirth
        }
        set {
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            yearOfBirth = year - newValue // age 속성에 전달된 값을 기반으로 출생연도 계산, 결과는 yearOfBirth 저장
        }
    }
}


let p1  = Person1(name: "john", year: 1983)
p1.age // 값을 읽을 때 get block 실행

p1.age = 50 // set block 실행 => 나이 입력 => 출생연도 저장
p1.yearOfBirth // 1970 새롭게 계산된 출생연도 저장되어있음


// ** Property Observer

class Size {
    var width = 0.0 {
        willSet {
            print(width, "=>", newValue)
        }
        didSet {
            print(oldValue, "=>", width)
        }
    }
}

let s = Size()
s.width = 123


// ** Type Properties

class Math {
    static let pi = 3.14
    static var count = 0
}

let m = Math()
Math.count += 1 // 인스턴스 갯수를 counting 할때도 씀

let m2 = Math()
Math.count += 1

// m.pi => 이렇게 접근불가

Math.pi // => 형식 속성은 기본적으로 지연 속성, 처음 접근하는 순간 초기화됨
Math.count


// ** Self, 값 형식에서 self를 활용하는 패턴

struct Size1 {
    var width = 0.0
    var height = 0.0
    
    mutating func reset(value: Double) {
        
        // self에 새로운 인스턴스를 저장하는 코드로 바꾸기
        self = Size1(width: value, height: value)
        // 새로운 인스턴스로 교체됨 => 생성자를 통해 초기화 할 수 있는 장점 => class 사용 못함
    }
}

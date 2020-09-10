import UIKit

// ** Initializer
// * Default Initializer(기본 생성자)

class Position {
    var x = 0.0 // 선언과 동시에 기본값을 저장
    var y = 0.0
    var z: Double? = nil // 옵셔널 => 기본값을 저장하지 않으면 자동으로 nil 초기화
    
//    init() { 파라미터를 사용해서 초기화하는 방법
//        y = 0.0
//    }
}

let p = Position() // Default Initializer 호출


// * Initializer

class SizeObj {
    var width = 0.0
    var height = 0.0
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
//    // 이것도 가능하지만 초기화코드는 중복을 없애야함
//    init(value: Double) {
//        self.width = value
//        self.height = value
//    }
    
    convenience init(value: Double) {
        self.init(width: value, height: value) // 다른 init을 호출
    }
}

// * Memberwise Initializer

struct SizeValue {
    var width = 0.0
    var height = 0.0
}

let s = SizeValue()

SizeValue(width: 1.2, height: 3.4)


// ** Designated Initializer

class Position1 {
    var x: Double
    var y: Double
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    convenience init(x: Double) {
        self.init(x: x, y: 0.0)
    }
}

// * Initializer Inheritance

class Figure {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func draw() {
        print("draw \(name)")
    }
    
    convenience init() {
        self.init(name: "unknown")
    }
}

class Rectangle: Figure {
    var width: Double
    var height: Double
    
    init(name: String, width: Double, height: Double) {
        self.width = width // 현재 클래스 속성 초기화
        self.height = height // 현재 클래스 속성 초기화
        super.init(name: name) // 상위 구현 호출
    }
    
    override init(name: String) { // 지정생성자 재정의
        width = 0.0 // 현재 클래스 속성 초기화
        height = 0.0
        super.init(name: name)
    }
    
    convenience init() {
        self.init(name:"unknown") // 항상 동일한 클래스에 있는 다른 initializer를 호출함(Super Class Initializer 호출 불가)
    } // Overriding 개념이 적용되지 않음
}


// * Required Initializer

class Mommy {
    var name: String
    
    required init(name: String) {
        self.name = name
    }
}

class Baby: Mommy { // 새로 정의한 속성이 기본값을 가지고 있고, Initializer를 구현하고 있지 않기 때문에 Super Class로부터 Initializer를 상속받음
    var width = 0.0
    var height = 0.0
}

let b = Baby(name: "Hello")


// 모든 속성을 초기화 하지 않은 경우

class Baby1: Mommy {
    var width: Double
    var height: Double
    
    init() {
        width = 0.0
        height = 0.0
        super.init(name: "unknown")
    }
    
    required init(name: String) { // Sub Class에서 Required Initiailizer를 구현할 땐 Super Class와 완전히 동일한 형태로 구현해야함 => Override Keyword 필요없음
        width = 0.0 // 무조건!!! 구현해야함
        height = 0.0
        super.init(name: name)
    }
}

// ** Initializer Delegation
// * Value Type

struct Size {
    var width: Double
    var height: Double
    
    init(w: Double, h: Double) {
        width = w
        height = h
    }
    
    // 이것보다
//    init(value: Double) {
//        width = value
//        height = value
//    }
    
    // 권장
    init(value: Double) { // convenience Keyword 없음
        self.init(w: value, h: value)
    }
}

// * Class Type

class Chocolate {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    convenience init() { // Designated Initializer를 호출하고 있음 => Delegate Across
        self.init(name: "unknown") // Delegate를 하려면 convenience Keyword를 붙여야함
    }
}

class Twix: Chocolate {
    var width: Double
    var height: Double
    
    init(n: String, w: Double, h: Double) { // Delegate Up
        width = w
        height = h // Property를 Initialized하는 Code가 Delegation 앞에 있음(첫번째 단계에서 실행)
        super.init(name: n) // 뒤에 있으면 두번째 단계에서 실행 => 저장 속성은 super.init 전에 초기화 해야함
    }
    
    convenience init(value: Double) {
        self.init(n: "Twix", w: value, h: value)
    }
}

class MiniTwix: Twix { // 새로운 속성을 선언하지 않고 Designated Initializer도 구현하지 않았음, Designated Initializer가 상속됨
    
    convenience init(value: Double) { // 상속받은 Initializer 호출하고 있음
        self.init(n: "MiniTwix", w: value, h:value)
    }
    
    convenience init() { // Delegate Across
        self.init(value: 0.0)
    }
}

// ** Failable Initializer
struct Position2 {
    let x: Double
    let y: Double
    
    init?(x: Double, y: Double) {
        guard x >= 0.0, y >= 0.0 else { return nil }
        
        self.x = x
        self.y = y
    }
    
    init!(value: Double) {
        guard value >= 0 else { return nil }
        
        // Failable Initializer는 제약에서 자유롭기 때문에 ?, non-failable Initializer 호출 가능
        self.init(x: value, y: value)
    }
}


var pp = Position2(x: 12, y: 34)
pp // 자료형은 Position2?(Optional)

pp = Position2(x: -12, y: 0) // nil, 초기화 중단

var bb = Position2(value: 12) // Position? IUO로 return
bb // 옵셔널 형식에 저장하면 자동으로 추출되지 않음

bb = Position2(value: -12) // nil return

var cc: Position2 = Position2(value: 12) // IUO => Instance가 변수에 저장되는 시점에 자동으로 언래핑됨
cc // 자료형 Position2


// ** Deinitializer

class Ghana {
    var origin = Position()
    var size = Size(value: 0.0)
    
    deinit {
        print("denint \(self)")
    }
}

var g: Ghana? = Ghana()
g = nil // Memory에 있던 Ghana Instnace가 제거됨

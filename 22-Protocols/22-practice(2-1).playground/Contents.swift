import UIKit

// ** Defining Protocols
// Protocol 선언
protocol Something {
    func doSomething()
}

// Protocol 채용
struct Size: Something {
    func doSomething() {
        
    }
}

// Class-Only Protocols
protocol SomethingObject: AnyObject, Something { // AnyObject를 상속하면 Calss-Only
    
}

class Object: SomethingObject {
    func doSomething() {
        
    }
}


// ** Property Requirements
protocol Figure {
    // var name: String { get}
    // var name: String { get set } 읽기, 쓰기 모두 가능해야함
    static var name: String { get set }
}

struct Rectangle: Figure {
    // let name = "Rect" get만 있을 때 let 가능
    static var name = "Rect"
}

struct Triangle: Figure {
    // var name = "Triangle"
    static var name = "Triangle"
}

struct Circle: Figure {
//    var name: String { set block 추가해야함
//        retrurn "Circle"
//    }
    
    static var name: String {
        get {
            return "Circle"
        }
        set {
            
        }
    }
}

class Circle1: Figure {
    class var name: String { // Static 속성은 Overriding 불가 => Class Keyword는 Overriding 허용
        get {
            return "Circle1"
        }
        set {
            
        }
    }
    
}


// ** Method Requirements
protocol Resettable {
    mutating func reset()
}

class Size1: Resettable {
    var width = 0.0
    var height = 0.0
    
    func reset() { // Class에선 mutating 생략 가능
        width = 0.0
        height = 0.0
    }
}


struct Size2: Resettable {
    var width = 0.0
    var height = 0.0
    
    mutating func reset() {
        width = 0.0
        height = 0.0
    }
}


// Type Method 선언
protocol Resettable1 {
    static func reset()
}

class Size3: Resettable {
    var width = 0.0
    var height = 0.0
    
    func reset() {
        width = 0.0
        height = 0.0
    }
    
    class func reset() { // Overloading 규칙에 따라, 이름이 같은 Instance Method, Type Method 구현 가능
        
    } // static은 Overriding 불가 => class로 Keyword 변경하면 Overriding 가능, 요구사항 충족시킴
}


// ** Initializer Requirements
protocol Chocolate {
    var name: String { get }
    init(n: String)
}

struct Twix: Chocolate {
    var name: String // protocol에서 init(name: String)일 때는 Memberwise Initializer가 제공되기 때문에 init Method 없어도 됨
    init(n: String) {
        name = n
    }
}

class Ghana: Chocolate {
    var name: String
    required init(n: String) { // Class는 Inheritance를 고려해야하고, 모든 Sub Class에서 Protocol의 Requirements를 충족시켜야함 => required Keyword 필요
        name = n
    }
}

final class Kitkat: Chocolate { // final Keyword는 더이상 Inheritance하지 않기 때문에 Inheritance을 고려하지 않아도 됨 => required Keyword 필요없음
    var name: String
    init(n: String) {
        name = n
    }
}

class MiniGhana: Ghana /*, Chocolate*/ { // Chocolate 중복선언은 허용되지 않음(이미 Super Class에서 Protocol 채택하고 있음)
    var prop: Int
    init() {
        prop = 0
        super.init(n: "MiniGhana")
    }
    
    // Requirement를 충족시키기 위해 반드시 지정생성자로 구현할 필요는 없음, required Keyword 필요(꼭 사용하지 않아도 되지만 구현은 필수로 해야함)
    required convenience init(n: String) {
        self.init()
    }
}


protocol Grayscale {
    init(white: Double) // Non-Failable
}

struct Color: Grayscale {
//    init?(white: Double) { Failable 형식 => 다른 형식으로 인식함
//
//    }
    init!(white: Double) { // Requiredments 충족하지만 초기화 실패시 Runtime Error
        
    }
}

// protocol을 Failable Initializer로 바꾸기
protocol Grayscale1 {
    init?(white: Double)
}

struct Color1: Grayscale1 {
    init(white: Double) { // Failable, Non-Failable 형식 모두 가능
        
    }
}


// ** Subscript Requirements
protocol List {
    subscript(idx: Int) -> Int { get } // get은 필수 Keyword
}

struct DataStore: List {
    subscript(idx: Int) -> Int {
        get { // protocol에서 get Keyword만 사용했지만 읽기/쓰기 가능한 속성으로 선언해도 됨
            return 0
        }
        set {
            
        }
    }
}

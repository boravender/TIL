import UIKit

// ** Protocol Types
protocol Resettable {
    func reset()
}

class Size: Resettable {
    var width = 0.0
    var height = 0.0
    
    func reset() {
        width = 0.0
        height = 0.0
    }
}

let s = Size()
let r: Resettable = Size()

r.reset()
// r.width protocol에 선언되어 있는 Member만 사용가능

// * Protocol Conformance
s is Resettable // true
s is ExpressibleByNilLiteral // false

let v = Size() as Resettable // (실제 Size Instance지만) Resettable 형식으로 저장됨

v as? Size // 다시 원래 형식으로 Casting

// * Collections of Protocol Types
protocol Figure {
    func draw()
}

struct Triangle: Figure {
    func draw() {
        print("draw triangle")
    }
}

class Rectangle: Figure {
    func draw() {
        print("draw rect")
    }
}

struct Circle: Figure {
    var radius = 0.0
    
    func draw() {
        print("draw circle")
    }
}

let t = Triangle()
let e = Rectangle()
let c = Circle()

let list: [Figure] = [t, e, c] // Instance가 값인지, 객체인지 구분하지 않고 Figure 형식으로 Casting해서 저장

// 배열 열거해보기
for item in list {
    item.draw()
    // item.radius 접근불가
    if let c = item as? Circle {
        c.radius
    }
}

// ** Protocol Composition
// 두 개의 Protocol 선언
protocol Reresettable {
    func reset()
}

protocol Printable {
    func printValue()
}

// Protocol 채용하기
class Ssize: Reresettable, Printable {
    var width = 0.0
    var height = 0.0
    
    func reset() {
        width = 0.0
        height = 0.0
    }
    
    func printValue() {
        print(width, height)
    }
}

class Ccircle: Reresettable {
    var radius = 0.0
    
    func reset() {
        radius = 0.0
    }
}

class Oval: Ccircle {
    
}

// 동일한 Instance를 Protocol 형식으로 저장
let rr: Reresettable = Ssize()
let pp: Printable = Ssize()

// 두 개의 Protocol을 모두 충족시키는 형식을 저장하려면?
var rrpp: Reresettable & Printable = Ssize()

// Ccircle Class 계층에 있고, Reresettable Protocol을 채용한 Instance 저장 => Sub Class 저장할 수 있음
var cr: Ccircle & Reresettable = Ccircle()
cr = Oval()


// ** Optional Protocol Requirements
@objc protocol Drawable {
    @objc optional var strokeWidth: Double { get set }
    @objc optional var strokeColor: UIColor { get set }
    func draw() // draw만 Requirement임
    @objc optional func reset()
}

class Rerectangle: Drawable {
    func draw() { // 모든 Requirement 구현한 것임
        
    }
}

let rrr: Drawable = Rerectangle()
rrr.draw() // 구현되어 있는 Method이기 때문에 호출하고 실행가능
rrr.strokeWidth // nil
rrr.strokeColor // nil
// => 형식에 해당 속성이 선언되어 있지 않음, 선택적 멤버는 Optional 형식으로 대체됨

rrr.reset?() // 선택적 Method를 호출할 때는 괄호 앞에 Optional Chaining 연산자를 추가해야함 => 형식에서 구현하지 않은 멤버에 접근하는 코드도 오류없이 실행할 수 있음


// ** Protocol Extension
protocol Chocolate {
    var name: String { get }
    func draw()
}

//extension Chocolate {
//    func draw() { //Method의 기본 구현을 추가하여 Twix는 요구사항을 충족시킴
//        print("draw chocolate")
//    }
//}

extension Chocolate where Self: Equatable {
    func draw() {
        print("draw chocolate")
    }
}


//struct Twix: Chocolate {
//    var name = ""
//}


// draw Method 직접 구현시, 중복 오류는 발생하지 않고 Extension으로 추가된 멤버는 무시됨
struct Twix1: Chocolate {
    var name = ""
    
    func draw() {
        print("draw twix")
    }
}

//
//let tt = Twix()
//tt.draw() // "draw chocolate"


let tt1 = Twix1()
tt1.draw() // "draw twix"


struct Twix2: Chocolate, Equatable { // where절 충족 => draw() Method 추가됨
    var name = ""
}

let tt2 = Twix2()
tt2.draw() // "draw chocolate"

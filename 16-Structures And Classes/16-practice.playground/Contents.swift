import UIKit


// 📌구조체 구현
struct Person {
    var name: String
    var age: Int
    
    func speak() {
        print("Hello")
    }
}

// 구조체 생성
let p = Person(name: "choco", age: 10)

// 속성에 접근

p.name
p.age

p.speak()




// 📌클래스 구현
class Person1 {
    var name = "bori"
    var age = 2
    
    func speak() {
        print("Hello")
    }
}

// 생성
let p1 = Person1()



// 📌init
class Position {
    var x: Double
    var y: Double
    
    init() {
        self.x = 0.0
        self.y = 0.0
    }
    
    init(value: Double) {
        self.x = value
        self.y = value
    }
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

// 생성
let a = Position()
a.x // 0.0
a.y // 0.0

let b = Position(value: 100)
b.x // 100
b.y // 100

let c = Position(x: 3.0, y: 5.0)
c.x // 3.0
c.y // 5.0


// 📌Value Types and Reference Types
struct PositionValue {
    var x = 0.0
    var y = 0.0
}

class PositionObject {
    var x = 0.0
    var y = 0.0
}

var v = PositionValue()
var o = PositionObject()

var v2 = v
var o2 = o

v2.x = 12
v2.y = 34

v // x 0 y 0
v2 // x 12 y 34 => 값형식인 구조체는 복사본을 전달하여 기존값 변경되지 않음

o2.x = 56
o2.y = 78

o // x 56 y 78
o2 // x 56 y 78 => 참조형식인 클래스는 원본을 전달하여 기존값 변경됨



// 📌항등연산자
class A {
    
}

let x = A()
let y = x
let z = A()

x === y // true 동일한 주소
x !== y // flase
a !== z // true 서로 다른 인스턴스

// 📌Nested Types
class One {
    struct Two {
        enum Three {
            case a
            
            class Four {
                
            }
        }
    }
    
    var a = Two()
}

let two: One.Two = One.Two()

let four = One.Two.Three.Four()

let caseA = One.Two.Three.a



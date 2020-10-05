import UIKit

// ** Value Types & Reference Types

struct SizeValue {
    var width = 0.0
    var height = 0.0
}

var value = SizeValue() // 인스턴스 생성 => stack의 메모리 공간에 생성

var value2 = value
value2.width = 1.0
value2.height = 2.0

value
value2 // copy on right 최적화 => 값이 변경되는 경우에만 실제로 복사되도록 최적화


class SizeObject {
    var width = 0.0
    var height = 0.0
}

var object = SizeObject() // Stack(0x1234) => Heap(width: 0.0 / height: 0.0)

var object2 = object // 주소가 그대로 복사됨 Stack(0x1234)

object2.width = 1.0
object2.height = 2.0

object // width = 1.0 / height = 2.0
object2


let v = SizeValue()

// v.width = 1.0 => 상수가 가리키는 Stack의 값을 바꾸지 못하는 공간으로 만듦

let o = SizeObject() // 상수가 가리키는 Stack의 값을 바꾸지 못하지만
o.width = 1.0 // 참조형식에서 Stack에는 메모리 주소가 저장되어 있음(Instance 바꿀 수 없음), ⭐️Instance 속성은 바꿀 수 있음
o.height = 2.0


// ** Automatic Reference Counting

class Person {
    var name = "John Doe"
    
    deinit {
        print("person deinit")
    }
}

var person1: Person?
var person2: Person?
var person3: Person?

person1 = Person()
person2 = person1
person3 = person1

person1 = nil
person2 = nil
person3 = nil


// ** Weak Reference

class Dog {
    var name = "puppy"
    var car: Car?
    
    deinit {
        print("dog deinit")
    }
}

class Car {
    var model: String
    weak var lesses: Dog?
    
    init(model: String) {
        self.model = model
    }
    
    deinit {
        print("car deinit")
    }
}

var dog: Dog? = Dog()
var rentedCar: Car? = Car(model: "Porsche")

dog?.car = rentedCar
rentedCar?.lesses = dog // 약한 참조 => 참조 카운트 증가하지 않음

dog = nil
rentedCar = nil


// ** Unowned Reference

class Cat {
    var name = "navi"
    var car : Car1?
    
    deinit {
        print("cat deinit")
    }
}

class Car1 {
    var model: String
    unowned var lessee: Cat // 해제한 뒤에 접근하면 nil이기 때문에 런타임 에러 발생 가능성 있음
    
    init(model: String, lessee: Cat) {
        self.model = model
        self.lessee = lessee
    }
    
    deinit {
        print("car1 deinit")
    }
}

var cat: Cat? = Cat()
var rentedCar1: Car1? = Car1(model: "Porshe", lessee: cat!)

cat?.car = rentedCar1

cat = nil
rentedCar1 = nil

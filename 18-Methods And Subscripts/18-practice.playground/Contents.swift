import UIKit

// ** Instance Method
// 클래스 만들기
class Sample {
    var data = 0
    static var sharedData = 123
    
    func doSomething() {
        print(data)
        
        Sample.sharedData // 타입멤버 형식 이름을 통해 접근
    }
    
    func call() {
        doSomething()
    }
}

let a = Sample()
a.data // 데이터 속성에 접근

a.doSomething() // 매서드에 접근
a.call()


// 새로운 클래스 만들기

class Size {
    var width = 0.0
    var height = 0.0
    
    // 속성값을 증가시키는 매서드
    func enlarge() {
        width += 1
        height += 1
    }
}

let s = Size() // let으로 선언해도 가능
s.enlarge()


// 구조체로 바꿔보기

struct Size1 {
    var width = 0.0
    var height = 0.0
    
    mutating func enlarge() { // 값형식에서 속성을 바꾸는 매서드는 mutating으로 선언해야함
        width += 1.0
        height += 1.0
    }
}

// 인스턴스를 변수에 저장해야함
// let s1 = Size1()
var s1 = Size1() // 값형식에서 인스턴스의 가변성은 멤버의 가변성에 영향을 줌
s1.enlarge()




// ** Type Method
class Circle {
    static let pi = 3.14
    var radius = 0.0
    
    func getArea() -> Double {
        return radius * radius * Circle.pi // 타입속성은 타입이름으로 접근
    }
    
    static func printpi() { // 타입매서드에서는 타입 이름없이 바로 접근 가능
        print(pi)
    }
}

// 타입매서드 호출
Circle.printpi()

//class StrokeCircle: Circle {
//    override static func printpi() { // static 키워드로 선언한 매서드는 오버라이드 할 수 없음 => class로 변경해야함
//        print(pi)
//    }
//}



// ** Subscripts
class List {
    var data = [1, 2, 3]
    
    subscript(i index: Int) -> Int {
        get {
            return data[index]
        }
        set {
            data[index] = newValue
        }
    }
}


var l = List()
l[i: 0]

l[i: 1] = 123 // set block 실행


// 구조체에서 구햔해보기
struct Matrix {
    var data = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    
    // 2개의 파라미터를 받는 서브스크립트 구현
    subscript(row: Int, col: Int) -> Int {
        return data[row][col]
    }
}

let m = Matrix()
//m[0][0] 이거 안됨, 정수에서 서브스크립트 사용 못함

// 서브스크립트로 2개의 값을 전달할 때는 콤마로 나열
m[0,0]

//m[0,10] 원래 배열에 잘못된 범위로 접근하면 에러 발생 => 에러가 발생하지 않도록, 전달된 파라미터가 올바른 인덱스 범위에 있는지 확인

struct Matrix2 {
    var data = [[1, 2, 3], [4, 5, 6],[7, 8, 9]]
    
    subscript(row: Int, col: Int) -> Int? {
        guard 0 <= row, row < 3, 0 <= col, col < 3 else{
            return nil
        }
        return data[row][col]
    }
}
    
let mm = Matrix2()

if let t = mm[0, 10] {
    print("Yess!")
}


import UIKit

//함수의 형식을 표현하는 방법과 First-class citizen(일급객체)으로 활용하는 방법에 대해 공부합니다.
//- 함수 형식
//- () 와 Void
/*:
 # Function Types
 ![ftype](ftype.png)
 */
// 함수도 자료형을 가지고 있다.


//()     Void    주로, 빈괄호를 사용


func sayHello() {
    print("Hello, Swift")
}

let f1: () -> () = sayHello   //함수자체가 저장


sayHello()

f1()



func printHello(with name: String) {
    print("hello, \(name)")
}


let f2: (String) -> () = printHello(with:)   //함수표기법(아규먼트 레이블만 쓰기!!!)


let f3 = printHello(with:)


// 상수에 저장된 함수를 호출할때는 아규먼트 레이블을 쓰지 않음


f3("World")  // 펑션타입에는 아규먼트 레이블을 포함하지 않음




func add(a: Int, b: Int) -> Int {
    return a + b
}


var f4: (Int, Int) -> Int = add(a:b:)

f4(1, 2)



// 와일드카드 패턴 사용한 경우
func add(_ a: Int, with b: Int) -> Int {
    return a + b
}

f4 = add(_:with:)   // 함수표기법을 통해서, 함수전달



// 입출력 파라미터를 선언한 경우
func swapNumbers(_ a: inout Int, _ b: inout Int) {
    
}


let f5 = swapNumbers(_:_:)     //자료형을 확인해보면, inout이 추가되어 있음



//가변파라미터
func sum(of numbers: Int...) {
    
}


let f6 = sum(of:)
f6  //가변타입




func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func divide(_ a: Int, _ b: Int) -> Int {
    return a /  b
}




                             //첫번째 화살표가 리턴
//func selectFunction(from op: String) -> (Int, Int) -> Int {
//                                       // (두번째)펑션타입에 포함된 화살표
//}


typealias ArithmeticFunction = (Int, Int) -> Int

func selectedFunction(from op: String) -> ArithmeticFunction? {
    switch op {
    case "+":
        return add(_:_:)
    case "*":
        return multiply(_:_:)
    case "-":
        return subtract(_:_:)
    case "/":
        return divide(_:_:)
    default:
        return nil
    }
}



let af = selectedFunction(from: "+")

af?(1, 2)
print(af?(1, 2))   // af함수의 형식은 옵셔널임 ===> 옵셔널 체이닝이 필요


selectedFunction(from: "*")?(12, 34)
print(selectedFunction(from: "*")?(12, 34))


print("안녕","바보", separator: "...", terminator: "============")

print

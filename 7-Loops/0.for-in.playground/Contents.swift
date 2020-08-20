
import UIKit
/*:
 # For-In Loops
 */

// loopConstant(반복상수) ===> 반복문 내에서 값을 변경 불가능

// "반복상수"의 자료형은 Range의 lowerBound / upperBound와 동일

/*:
 ## Syntax
 ![syntax](syntax-range.png)
 */
var a = 10

for index in 1...10 {
    print("hello \(index)")
    print(index)
    print(a)
}


for _ in 1...5 {   //와일드카드 패턴, 언더스코어문자로 생략
    print("hello")
}


let power = 10
var result = 1

for _ in 1...power {
    result = result * 2
}

result


//짝수만 뽑아내기

for num in stride(from: 0, to: 10, by:2) { //마지막 숫자 포함하지 않음
    print(num)
}


/*:
 ## Syntax
 ![syntax](syntax-collection.png)
 */

//컬렉션도 반복가능하다.

let list = ["Apple", "Banana", "Orange"]

for fruit in list {
    print(fruit)
}



for i in 2...9 {   //지정된 범위만큼의 반복하거나, 컬렉션을 열거할 수 있다. // 얼마든지 중첩해서 쓸 수있다.
    for j in 1...9 {
        print("\(i) x \(j) = \(i * j)")
    }
}



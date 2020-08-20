
import UIKit

/*:
 # Range Operators
 */
// 범위 연산자

/*:
 ## Closed Range Operator
 ````
 a ... b
 a...
 ...a
 ````
 */
// 이항, 단항 모두 가능   // 단항으로 쓸때, 공백없이 붙여서 써야함  // prefix, postfix로 사용가능

1...10
// 10...1
// 내림차순 범위를 쓸 수없음

(1...10).reversed()

//실수를 사용하는 것도 가능
12.34...56.22

//문자열 인덱스를 사용하는 것도 가능  // 인덱스로 구분되는 값이라면 사용가능



var sum = 0
for num in 1...10 {
    num
    sum += num
}
sum


let array = ["A", "B", "C", "D", "E"]
array[2...]  // 배열은 범위가 고정되어있음
array[...2]



/*:
 ## Half-Open Range Operator
 ````
 a ..< b
 ..<a
 ````
 */
// upper bound가 범위에 포함되지 않음

sum = 0

for num in 1..<10 {  // 단항으로 사용하는 것은 불가능
    sum += num
}

sum


array
array[..<2]


//for num in ..<10 {  // 하프오픈으로 사용하면 안됨
//
//}


let range = 0 ... 5
range.contains(7) //범위에 포함이 되는지 확인하는 메서드
range.contains(1)

let range2 = ...5    // lower Bound가 무한대임
range2.contains(-1)
range2.contains(Int.min)



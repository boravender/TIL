
//: [Previous](@previous)

import Foundation

/*:
 # Fall Through
 */

let num = 2

switch num {
case 1:
   print("one")
case 2:
   print("two")
   fallthrough   // 무조건 다음블럭을 실행함(매칭값 고려안함)
case 3:
   print("three")   // 여기서는 fallthrough가 없기 때문에 종료
default:
   break
}


let attempts = 10

switch attempts {
case ..<10:
   print("warning")
case 10:
   print("warning")
   fallthrough
default:
   print("reset")
}


switch attempts {
case ..<10:
   print("warning")
case 10:
   print("warning")
   print("reset")     //fallthrough를 넣는게 효과적 (코드 중복을 줄일 수 있음)
default:
   print("reset")
}





















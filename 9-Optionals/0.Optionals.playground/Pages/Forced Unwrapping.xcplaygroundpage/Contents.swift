
//: [Previous](@previous)

import Foundation

/*:
 # Unwrapping
 */

var num: Int? = nil
print(num)

num = 123
print(num)   //옵셔널 타입 ===> 특별한 방식으로 값을 저장

let n = 123
print(n)     //


/*:
 ## Forced Unwrapping
 ![forced-unwrapping](forced-unwrapping.png)
 */
// 강제로 값을 추출하는 방법  => 옵셔널표현식 뒤에 물음표 붙이기

//! => 강제추출 연산자

print(num)

print(num!)


num = nil
//print(num!)  // 강제추출 ===> nil이 저장되어있기 때문에, 에러발생


// 강제추출을 할때에는 먼저 값이 저장되어있는지 확인하는 것이 안전.
// (값이 저장되어 있는지, 확인 후에 추출)

if num != nil {
    print(num!)
}



num = 123

let before = num
let after = num!





// 옵셔널에 저장된 값을 사용하려면, 반드시 값을 언래핑 해야한다.
// 그리고 nil이 저장되어있는 상태에서 강제추출하면 크래시가 발생한다.
// 옵셔널표현식을 언래핑하면 non-optional타입으로 결과가 리턴됨


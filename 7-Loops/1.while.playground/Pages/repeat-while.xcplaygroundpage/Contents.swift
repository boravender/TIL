//: [Previous](@previous)

import Foundation

/*:
 # repeat-while
 
 ## Syntax
 ![repeat-while](syntax-repeat-while.png)
 */
// 코드를 먼저 실행한 다음 조건을 실행

var num = 100

while num < 100 {
    num += 1
}

num  // 100



// 위에랑 차이가 생김

num = 100

repeat {
    num += 1
} while num < 100

num   // 101

// 조건을 먼저 실행하려면 while 문
// 코드를 먼저 실행하려면 repeat while 문











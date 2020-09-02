
//: [Previous](@previous)

import Foundation

/*:
 # Diacritic Insensitive
 */
// 발음기호를 처리하는 옵션


let a = "Cafe"
let b = "Cafè"  //소문자 e키 길게 누르기

a == b  //false
a.compare(b) == .orderedSame   //false (실제 모양을 비교하기 때문에)



// 발음기호를 없애고 비교
a.compare(b, options:[.diacriticInsensitive]) == .orderedSame      //true
 

//: [Next](@next)

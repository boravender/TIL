
//: [Previous](@previous)
//문자열 옵션을 통해 다양한 비교/검색 조건을 지정하는 방법에 대해 공부합니다.
//- Numeric Option
//- Diacritic Insensitive Option
//- Width insensitive Option
//- Forced Ordering Option
//- Regular Expression Option



import UIKit

/*:
 # Numeric Option
 */
//문자열의 순서비교

"A" < "B"   //true

"a" < "B"   //false (문자에 할당되어 있는 코드의 크기를 비교) 아스키 테이블상의



// 파일이름을 정렬하는 코드를 작성한다고 가정
let file9 = "file9.txt"
let file10 = "file10.txt"


file9 < file10      // false (숫자를 비교하지 않음) (9와 1을 비교하게됨)


file9.compare(file10) == .orderedAscending      // false ====>  .orderedAscending(오름차순)과 비교했을때 true가 나와야 하지만 아님



//.numeric 옵션을 추가하면 ===> 숫자 자체를 비교함
file9.compare(file10, options: [.numeric]) == .orderedAscending     // true




//: [Next](@next)

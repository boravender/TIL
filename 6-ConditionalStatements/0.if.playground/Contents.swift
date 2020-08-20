
import UIKit

// 토큰(더이상 쪼갤수없는 요소), 표현식(토큰 등이 모여서 하나의 값 도출), 문장(표현식이 모여 특정기능 실행)

/*:
 # if
 ## Syntax
 ![if](if.png)
 */



let id = "root3"
let password = "1234qwer"

if id == "root" {
    print("valid id")
}

if password == "1234qwer" {
    print("valid password")
}


// 단락평가 실시(앞에 것이 false면 뒤에 것 실행 안함)
if id == "root" && password == "1234qwer" {
    print("go to admin page")
}

// 아이디나 비밀번호가 틀렸을 때
if id != "root" || password != "1234qwer" {
    print("incorrect value")
}

/*:
 ## Syntax
 ![if-else](if-else.png)
 */

if id == "root" && password == "1234qwer" {
    print("go to admin page")
} else {
    print("incorrect value")
}

/*:
 ## Syntax
 ![if-elseif-else](if-elseif-else.png)
 */

var num = -2

// 논리적인 오류가 있음
if num >= 0 {
    print("positive number or zero")
} else if num % 2 == 0 {
    print("positive even number")
} else if num & 2 == 1 {
    print ("positive odd number")
} else {
    print("negativve number")
}

num = 20

if num >= 0 {
    print("positive number or zero")

    if num % 2 == 0 {
        print("positive even number")
    } else {
        print("positive odd number")
    }

} else {
    print("negative number")
}


num = 50

// 조건이 평가되는 순서도 중요 => 가장 까다로운 조건이 먼저 와야함
if num > 0 {
    print("positive number")
} else if num > 10 {
    print("positive number over 10")
} else if num > 100 {
    print("positive number over 100")
}




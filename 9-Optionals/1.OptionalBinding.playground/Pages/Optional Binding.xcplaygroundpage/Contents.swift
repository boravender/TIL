//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
import Foundation

/*:
 # Optional Binding
 */

var num: Int? = nil
print(num!)

if num != nil {    // 이렇게 코드를 작성하는 경우는 없음
    print(num!)
}


//안전하고 직관적인 코드로!!

/*:
 ## Syntax
 ![optional-binding-syntax](optional-binding-syntax.png)
 */
if num != nil {   //컨디션
    print(num!)    //강제추출
    num    //Int?
} else {
    print("empty")
}


if let n = num {   //바인딩
    print(n)       //강제추출하지 않음 (이미 값이 추출된 상태)
    n   //Int
} else {
    print("empty")
}


if let num = num {
    print(num)
} else {
    print("empty")
}




var str: String? = "str"
guard let str = str else {
    fatalError()
}
str


num = 123

// if var도 가능
if var num = num {
    num = 456
    print(num)
}


let a: Int? = 12
let b: String? = "str"


if let num = a, let str = b, str.count > 5 {    //모두 성공해야 if문 실행
    print(num, str)
}








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
import UIKit

/*:
 # Optional Pattern
 */
// 옵셔널이 어떻게 구현되어 있을까?

//Optional


let a: Int? = 0      // 단축 문법

let b: Optional<Int> = 0   // 실제구현 문법

// ===========================

if a == nil {    // 단축한 형태
    
}

if a == .none {  // 위와 동일

}

// =============================

if a ==  0 {   // 단축한 형태
    
}

if a == .some(0)  {
    
}


// ==========================

if let x = a {      //바인딩
   print(x)
}

if case .some(let x) = a {   // 열거형 케이스 패턴의 단축 문법
   print(x)
}

// =========================== 옵셔널 패턴 == 열거형 케이스 패턴의 옵셔널 버전

if case let x? = a {    //  (옵셔널 바인딩과 똑같음)
    print(x)
    x
}

// ========================== 옵셔널 패턴  =====> 코드가 단순해짐

let list: [Int?] = [0, nil, nil, 3, nil, 5]


// 옵셔널 바인딩
for item in list {
   guard let x = item else { continue }    //가드문으로 옵셔널 바인딩 실행중
   print(x)
}

// 옵셔널 패턴
for case let x? in list {    // 옵셔널 바인딩을 쓰지 않아도 되어서, 코드가 단순해짐
   print(x)
}







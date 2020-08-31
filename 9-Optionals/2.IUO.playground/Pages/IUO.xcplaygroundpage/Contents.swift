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
 # Implicitly Unwrapped Optionals
 ![iuo](iuo.png)
 */
// 암시적으로 추출되는 옵셔널
// => 자동으로 강제로 추출되는 옵셔널



let num: Int! = 12    // 자동으로 추출

let a = num     // 옵셔널 Int  => 형식추론을 사용하는 경우 자동으로 추출되지 않음
a


let b: Int = num   //⭐️옵셔널이 아닌 타입으로 저장될때, 자동으로 언래핑 됨⭐️

// ⭐️특정조건에서 자동으로 추출된다는 것이 핵심⭐️



let c: Int = num!    // 강제로 벗기는 것도 가능, 옵셔널 바인딩도 가능
                     // 그러나, 강제로 추출해주기 때문에, 1)옵셔널 바인딩으로 사용하거나 2)강제추출 사용할 필요가 없음
num


// 실제코드에서 자주 활용되지는 않음 => 문법적으로만 이해하면 됨


let num2: Int! = nil

//let d: Int = num2     //에러남.... nil이 들어있기 때문에.


//2가지 경우에 만나게 됨 => 그냥 옵셔널로 처리하면 됨

// 1) 아웃렛 연결
// 2) api에서 IUO를 리턴하는 경우





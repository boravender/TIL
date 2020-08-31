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

struct Contacts {
    var email: [String: String]?
    var address: String?
    
    func printAddress() {
        return print(address ?? "no address")
    }
}

struct Person {
    var name: String
    var contacts: Contacts
    
    init(name: String, email: String) {
        self.name = name
        contacts = Contacts(email: ["home": email], address: "Seoul")
    }
}


/*:
 # Optional Chaining
 */
// 옵셔널을 연달아 호출하기

// 1) 옵셔널체이닝의 결과는 항상 옵셔널이다.
// 2) 옵셔널체이닝에 포함된 표현식 중에서 하나라도 nil을 리턴한다면, 이어지는 표현식을 평가하지 않고 nil을 리턴한다.


var p = Person(name: "James", email: "swift@example.com")

let a = p.contacts.address

a
//print(a)

var optionalP: Person? = Person(name: "James", email: "swift@example.com")

let b = optionalP?.contacts.address    // optionalP에 nil이 저장되어 있다면, 바로 nil을 리턴하고 종료

b  // 항상 옵셔널로 리턴
//print(b)

optionalP = nil

let c = optionalP?.contacts.address

c  // String?    (nil로 리턴된다 하더라도, 가장 마지막 표현식의 리턴형식을 따른다.)




//================================================================


struct Person1 {
    var name: String
    var contacts: Contacts?
    
    init(name: String, email: String) {
        self.name = name
        contacts = Contacts(email: ["home": email], address: "Seoul")
    }
    
    // 메서드 만들기
    func getContacts() -> Contacts? {
        return contacts
    }
}




var p1 = Person1(name: "James", email: "swift@example.com")

let a1 = p1.contacts?.address



var optionalP1: Person1? = Person1(name: "James", email: "swift@example.com")

let b1 = optionalP1?.contacts?.address    // contacts? 이 되어야 함

b1 // 항상 옵셔널로 리턴

optionalP1 = nil

let c1 = optionalP1?.contacts?.address

c1


// 옵셔널 형식으로 선언되어 있는 값을 통해서 속성이나, 메서드를 호출할때는 "?"(물음표)를 붙여야함

p1.getContacts()?.address   //메서드가 옵셔널 타입을 리턴하고, 이 타입을 통해서 다른 멤버에 접근할때.  =====> 괄호뒤에 물음표 붙임






// 메서드나 함수 자체가 옵셔널일때 ====> 괄호 앞에 붙임

let f: (() -> Contacts?)? = p1.getContacts

f?()?.address





let d = p1.getContacts()?.printAddress()     // 옵셔널 보이드    "() ===> 값을 리턴하지 않는 것을 나타내는 특별한 키워드"


// 실제로 메서드가 호출되었는지 확인할 수 있음
if p1.getContacts()?.printAddress() != nil {

}


// 조금더 세련된 코드
if let _ = p1.getContacts()?.printAddress() {   //보이드는 리턴값이 없다는 뜻 => 바인딩할 값이 없다. => 와일드카드 패턴 => 바인딩 성공여부만 판단

}





let e = p1.contacts?.email?["home"]    //물음표를 앞에 붙여야 함

e  // String? 자료형


               //? ===> 딕셔너리 자체가 없을수 있다는 물음표
p1.contacts?.email?["home"]?.count
                        //딕셔너리의 결과값이 없을 수 있다는 물음표


p1.contacts?.address = "Daegu"      //최종속성에 접근하면, 값을 바꿀 수 있고, 최종속성에 접근하지 못하면 값을 바꾸지 못함
p1.contacts?.address


optionalP1?.contacts?.address = "Daegu"
optionalP1?.contacts?.address



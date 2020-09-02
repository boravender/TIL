
//: [Previous](@previous)

import Foundation

/*:
 # Anchored Option
 */
// 전체 문자열을 검색검색대상으로 하지 않고 범위를 문자열 시작이나, 마지막으로 제한


let str = "Swift Programming Swift"

// 문자열 옵션을 사용하지 않는 경우
if let result = str.range(of: "Swift") {
    print(str.distance(from: str.startIndex, to: result.lowerBound))    // 0
}else {
    print("not found")
}




// 문자열 옵션을 사용하는 경우
if let result = str.range(of: "Swift", options:[.backwards]) {  // 문자열 전체 검색
    print(str.distance(from: str.startIndex, to: result.lowerBound))    // 0
}else {
    print("not found")
}


// 문자열 옵션을 사용하는 경우
if let result = str.range(of: "Swift", options:[.anchored]) {
    print(str.distance(from: str.startIndex, to: result.lowerBound))    // 0 (시작부분에서 검색)
}else {
    print("not found")
}


// 문자열 옵션(.anchored)을 사용하는 경우 (시작부분이나, 마지막부분을 검색)
                                             // .anchored는 단독으로 사용하는 경우 거의 없음(자주사용도 안함)
if let result = str.range(of: "Swift", options:[.anchored, .backwards]) {       // range = nil
    print(str.distance(from: str.startIndex, to: result.lowerBound))
}else {
    print("not found")      //   "not found"
}



// 접두어, 접미어 비교
str.hasPrefix("swift")         // false
str.hasSuffix("swift")         // false



// 대소문자 구분하지 않고 접두어 비교
str.lowercased().hasPrefix("swift")         // true
str.lowercased().hasSuffix("swift")         // true
 



// 위의코드를 .anchored 옵션을 사용해서 바꾸기 (접두어 비교와 같음)   (.backwards와 함께 사용하면 접미어 비교가 됨)
if let _ = str.range(of: "swift", options: [.anchored, .caseInsensitive]) {    // str.lowercased().hasPrefix("swift")
    print("same prefix")
}






// 도전과제

str.hasSuffix("swift")




//: [Next](@next)

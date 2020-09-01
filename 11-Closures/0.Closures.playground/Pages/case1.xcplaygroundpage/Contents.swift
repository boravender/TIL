//: [Previous](@previous)

import Foundation

let products = [
   "MacBook Air", "MacBook Pro",
   "iMac", "iMac Pro", "Mac Pro", "Mac mini",
   "iPad Pro", "iPad", "iPad mini",
   "iPhone Xs", "iPhone Xr", "iPhone 8", "iPhone 7",
   "AirPods",
   "Apple Watch Series 4", "Apple Watch Nike+"
]

           // {문자열을 파라미터로 받아서 Bool을 리턴하는 클로저} 배열의 개별요소를 대상으로 전달한 클로저를 실행한 다음, true를 리턴하는 요소만 따로 모아서 배열을 리턴하도록 구현되어 있음  ====> 개별요소는 파라미터로 전달
var proModels = products.filter({ (name: String) -> Bool in
    return name.contains("Pro")
})


print(proModels)


print(proModels.sorted())     //아스키 코드순서대로 정렬하게됨, 대문자 M의 아스키코드 숫자가 소문자 i보다 더 적음


//문자열 강의에서 살펴보기(대소문자 구별하지 않고 오름차순으로)
proModels.sort(by: { (lhs: String, rhs: String) -> Bool in
    return lhs.caseInsensitiveCompare(rhs) == .orderedAscending    //오름차순
})

proModels

//: [Next](@next)

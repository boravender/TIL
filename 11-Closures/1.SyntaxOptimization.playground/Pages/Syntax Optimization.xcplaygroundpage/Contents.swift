
import Foundation

//문법 최적화를 통해서 클로저 코드를 단축시키는 방법에 대해 공부합니다.
//- Implicit Returns
//- Trailing Closures
//- Shorthand Argument Names

/*:
 # Syntax Optimization
 */

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


// 컴파일러는 프레임워크 코드를 통해서 클로저 형식을 추론할 수 있음
products.filter({ (name) in    // 1) 파라미터 형식 생략, 리턴형 생략 가능    (파라미터 형식과 리턴형을 생략한다.)
    return name.contains("Pro")
})

// 2) 파라미터의 이름은 숏핸드 아규먼트 네임($0)으로 대체 가능(파라미터 이름과 in 키워드 생략)    (파라미터 이름을 생략하고, 숏핸드 아규먼트 이름으로 대체한다.)
products.filter({
    return $0.contains("Pro")
})

// 3) 리턴 생략 가능(임플리싯 리턴)   (클로저에 포함된 코드가 단일 리턴문이라면, 리턴 키워드를 생략한다.)
products.filter({
    $0.contains("Pro")
})

// 4) 클로저파라미터가 마지막 파라미터 ===> 트레일링 클로저로 작성   *트레일링 클로저 == 함수나 메서드 호출식 다음에 따라오는 클로저    (클로저가 마지막 파라미터라면 트레일링 클로저로 작성한다.)
products.filter() { $0.contains("Pro") }

// 5) 괄호생략(다른 파라미터 없는 경우)    (클로저를 제외한 파라미터가 없다면 괄호를 생략한다.)
products.filter { $0.contains("Pro") }







//문자열 강의에서 살펴보기
proModels.sort(by: { (lhs: String, rhs: String) -> Bool in
    return lhs.caseInsensitiveCompare(rhs) == .orderedAscending
})


proModels.sort { $0.caseInsensitiveCompare($1) == .orderedAscending }


proModels.contains(where:{(str: String) -> Bool in
    return str.contains("Pro")
})

// 문법 최적화
proModels.contains { $0.contains("Pro") }


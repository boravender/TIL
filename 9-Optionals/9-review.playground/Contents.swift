import UIKit

/*
 
 ** Optional
 nil을 저장할 수 있음
 
 ** Forced Unwrapping
 강제로 값을 추출하는 방법
 ! => 강제 추출 연산자
 
 ** Optinal Binding
 optional을 안전하게 벗기는 방법
 if let(var도 가능)
 guard let
 while let
 
 ** IUO(Implicitly Unwrapped Optionals)
 Type!
 optional이 아닌 타입으로 저장될 때 자동으로 unwrapping 됨
 특정 조건에서 자동으로 추출된다는 것이 핵심
 
 ** Nil-Coalescing Operator
 OptionalExpression ?? Expression
 값이 저장되어 있는지 확인하는 코드와 값을 추출하는 코드를 직접 작성할 필요가 없음
 단락평가를 수행하기 때문에 사이드 이펙트가 발생하지 않는 코드여야함
 
 ** Optional Chaining
 1) optional chaining의 결과는 항상 optional이다.
 2) optional chaining에 포함된 expression 중 하나라도 nil을 return한다면, 이어지는 expression을 평가하지 않고 nil을 return한다
 
 ** Optional Pattern
 if case let x? = a {
   print(x)
   x
 } => 옵셔널 바인딩과 동일함
 
 */

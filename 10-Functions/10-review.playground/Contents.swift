import UIKit

/*
 
 ** Functions
 함수 호출하기
 함수 정의하기(구현/선언)
 
 ** Retrun Values
 return
 1) 함수의 실행을 중지
 2) return keyword 다음의 expression을 평가 후 그 결과를 return
 
 ** Parameters
 임시 상수
 formal parameter => 함수에서 사용하는
 actual parameter => 함수 호출문에서 사용하는(argument, 인자)
 
 ** Argument Label
 함수 이름에는 argument label이 포함됨
 함수 이름의 가독성을 높이기 위함임
 
 ** Variadic Paraneters(가변 파라미터)
 하나의 파라미터를 통해 2개 이상의 값을 전달
 argument는 배열 형태로 전달
 
 ** In-Out Parameters(입출력 파라미터)
 parameter로 전달된 변수의 값을 함수 내부에서 직접 변경하는 방법
 
 func fixedSwapNumber(_ a: inout Int, with b: inout Int) {
     let tmp = a
     a = b
     b = tmp
 }

 fixedSwapNumber(&num1, with: &num2)
 
 ⭐️inout / & 위치
 
 ** Function Types
 first-class citizen(일급객체)
 
 ** Nested Functions
 함수 내부에 새로운 함수를 구현하는 방법
 내포된 함수는 호출할 수 있는 범위가 달라짐
 
 */

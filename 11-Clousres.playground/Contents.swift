import UIKit

/*
 
 ** Closure
 익명 함수(이름이 없는 클로저)
 
 ** Syntax Optimization 문법 최적화
 1) 파라미터 형식, 리턴형 생략
 2) 파라미터 이름, in keyword 생략
 3) return 생략(임플리싯 return)
 4) closure parameter이 마지막 prameter => trailing closure
 함수나 매서드 호출식 다음에 따라오는 closure
 5) 다른 parameter 없는 경우 괄호 생략
 
 ** Capturing Values
 클로저 내부에서 외부에 있는 값에 접근하면 값에 대한 "참조를 획득" 클로저 내부에서 값을 바꾸면 외부에 있는 원래 값도 함께 바뀜
 
 ** Escaping Closure
 함수의 실행이 종료된 후에도 실행될 수 있는 closure
 closure 형식 앞에 @escaping keyword 붙여주기
 
 */

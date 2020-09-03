import UIKit

/*
 
 ** Collection
 1) Foundation Collection
 2) Swift Collection
 
 ** Array [T]
 data를 순서대로 저장
 subscript, index로 요소에 접근할 수 있음
 append, insert, replaceSubrange 요소 추가
 remove 요소 삭제
 비교연산자, elementsEqual 요소 비교
 contains 요소 검색
 sort, reverse 요소 정렬
 
 ** Dictionary [key: vlaue]
 key & value 하나의 쌍, 정렬되지 않음
 key, value 개별적으로 리턴하는 속성 제공
 updateValue 요소 추가, 기존값 교체할 경우 이전에 저장된 값 return
 removeValue 요소 삭제
 비교할 땐 키를 정렬 후 비교해야함
 contains, first, filter 요소 검색(closure를 상수에 저장해서 사용)
 
 ** Set Set = [T]
 수학에서의 집합 연산, 정렬되지 않음
 contains 요소가 포함되어 있는지 확인
 insert, update 요소 추가(동일요소 중복 추가 불가)
 hashValue로 문자열 비교
 remove 요소 삭제
 * isSubset 부분집합
 * isSuperset 상위집합
 * isDisjoint 교집합 (서로소집합 => true / 교집합 => false return)
 ======== new set return ========
 * union 합집합 / formUnion
 * intersection 교집합 / formIntersection
 * symmetricDifference 여집합 / formSymmetricDifference
 * subtracting 차집합 / subtract
 
 ** Interating Collections
 collections 열거
 1) for in (break, continue 사용가능)
 array => 순서대로 출력
 set => 실행할 때마다 순서가 달라짐
 dictionary => (key, value) tuple 형태로 전달, 순서 달라짐
 2) forEach
 collection element를 clousre의 parameter로 전달
 3) 차이점
 retrun문 동작하는 방식 차이
 => forEach는 현재 실행중인 closure code만 중지, 반복횟수에 영향 없음
 
 */

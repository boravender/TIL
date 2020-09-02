import UIKit

/*
 
 ** String and Characters
 String 문자열
 Charater 문자
 
 ** Multiline String Literal
 """를 첫 줄과 마지막 줄에 단독적으로 작성하면 명시적인 줄바꿈 허용
 
 ** Raw String
 #으로 감싸면 문자 그대로 출력, 가독성 증가
 
 ** String Interpolation(문자열 삽입)
 \(expr)
 %char => 포맷지정자
 
 ** String Interpolation(Swift 5+)
 
 ** String Indices
 String.Index 형식
 
 ** String Basics
 문자열 생성, 연결, 길이 확인, 비교, 대소문자 변환
 
 ** Substring
 Substring 형식과 문자열 일부분을 추출
 1) 원본 메모리를 공유
 2) 변수의 문자열을 바꾸지 않으면 새로운 문자열은 생성되지 않는다
 3) 변수애 저장된 문자열을 바꾸면, 그 시점에 새로운 문자열이 생성된다
 4) 직접 새로운 문자열을 생성하고 싶다면, 스트링 생성자를 사용한다
 
 ** Appending Strings and Characters
 append 값을 바꿈
 appending 값을 바꾸지 않고 새로운 문자열을 리턴
 
 ** Replacing Substrings
 replace 값을 수정
 replacing 값은 수정하지 않고 리턴
 remove 값을 수정하고 Character 리턴
 drop substring 리턴
 
 ** Comparing Strings
 compare 비교하는 매서드, ComparisonResult return
 hasPrefix 접두어 비교
 hasSuffix 접미어 비교
 
 ** Finding Substrings
 contains 단어검색
 range 범위검색
 commonPrefix 공통접두어를 새로운 문자열로 리턴
 
 ** String Options
 * Case Insensitive Option
 대소문자 구분 없고, 다른 문자열 옵션도 함께 사용할 때
 * Literal Option
 '개별 코드'를 비교
 * Backwards Option
 트레일링에서 리딩방향으로 검색
 * Anchored Option
 검색 대상의 범위를 문자열 시작이나 마지막으로 제한
 * Numeric Option
 숫자 자체를 비교
 * Diacritic Insensitive
 발음 기호를 없애고 비교
 * Width Insensitive Option
 정각문자, 반각문자 상관없이 비교
 * Forced Ordring Option
 어떤 경우에도 강제로 정렬
 * Regular Expression(정규식)
 복잡한 패턴의 문자를 쉽게 검색 가능
 주로 입력된 값을 검증할 때 활용
 
 ** Character Set(문자 집합)
 문자 검색, 잘못된 문자 삭제 등에 활용
 
 
 */
 


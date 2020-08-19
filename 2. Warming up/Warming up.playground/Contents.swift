import UIKit

/*

** 토큰
=> 더 쪼갤 수 없는 최소 단위
** 표현식
=> 하나 이상의 토큰이 모여서 하나의 값으로 표현되는 코드
=> 표현식을 평가한다(evaluate), 코드를 실행했을 때 최종값
** 문장 또는 구문(문)
=> 표현식이 하나 이상 모여서 특정 작업을 실행하는 코드

** Literals
=> 코드 내에서 의미가 변하지 않고 있는 그대로 사용되는 값
** Identifiers
=> 식별자, 코드에 포함된 요소를 구별하는데 사용되는 이름
=> 영어나 숫자로 구성, 숫자로 시작할 수 없음
** Keywords
=> 예약어, 프로그래밍 언어가 제공하는 기능을 위해서 예약되어 있는 단어
=> 식별자로 사용할 수 없음


** Compile
=> code -> 바이너리코드 변환
** Link
=> 코드를 서로 연결하고 framework를 연결하는 과정
** 실행파일을 생성하는 방법 2가지
=> Debug Mode, 개발과정에서 사용
=> Release Mode, 앱스토어에 올릴 때 사용
** Compile Time & Run Time


<특수문자>
* ! Exclamation Mark
=> 논리 부정 연산자, 옵셔널에선 저장된 값을 강제로 꺼낼 때 사용
* ~ Tilde
=> 비트 연산자
* ` Back Tick
=> 키워드를 identifier로 바꾸는 문법에서 사용
* @ At Symbol
=> 코드 자체에 특성을 지정하는 용도
* # Sharp
=> 스위프트가 제공하는 특별한 명령어
* $ Dollar Sign
=> 클로저에서 파라미터 이름을 대체할 때 사용
* % Percent Sign
=> 나머지를 구할 때
* ^ Caret
=> 비트 연산에 사용
* & Ampersand
=> 메모리 주소를 얻거나, 참조를 전달할 때 사용
* * Asterisk
=> 곱하기 연산에서 사용
* () Parentheses
=> 함수 호출할 때 사용, 계산 순서 지정할 때 사용
* _ Underscore
=> 와일드카드 패턴 구현할 때 사용
* = Equal Sign
=> 변수나 상수의 값을 저장할 때 사용
* [] Square Bracket ✔️
=> 컬렉션에 저장된 값에 접근할 때 사용
* {} Brace ✔️
=> 코드 블록에 범위를 지정할 때 사용
* | Vertical Bar / Pipe
=> 논리 연산, 비트 연산에 사용
* . Period
=> 메소드를 호출하거나 속성에 접근할 때 사용
* <> Angle Bracket ✔️
=> 크기를 비교하는 연산자, 형식 파라미터를 지정할 때 사용

<First Class Citizen> 1급 객체
* 상수와 변수에 저장할 수 있다
* 파라미터로 전달할 수 있다
* 함수에서 리턴할 수 있다

*/

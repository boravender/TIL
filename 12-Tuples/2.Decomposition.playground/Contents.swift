
import UIKit
//튜플에 저장된 멤버를 개별 상수나 개별 변수에 저장하는 방법에 대해 공부합니다. (분해)
/*:
 # Tuple Decomposition
 ![decomposition](decomposition.png)
 */

let data = ("<html>", 200, "OK", 12.34)

//let body = data.0
//let code = data.1
//let message = data.2
//let size = data.3


let (body, code, message, _) = data          // _ 와일드카드 패턴도 가능 ===> 4번째 멤버는 분해되지 않음


body
code
message















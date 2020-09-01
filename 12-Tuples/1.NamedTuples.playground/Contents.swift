
import UIKit
//튜플 멤버에 이름을 붙여서 가독성을 높이는 방법에 대해 공부합니다.
/*:
 # Named Tuples
 ![expr](expr.png)
 ![eme](eme.png)
 */

let data = ("<html>", 200, "ok", 12.34)

data.0  // 어떤 데이터인지 직관적으로 접근하기 어려움


let named = (body: "<html>", statusCode: 200, statusMessage: "OK", dataSize: 12.34)

named.1
named.statusCode    //코드의 가독성이 높아졌음




















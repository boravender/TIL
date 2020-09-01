
import UIKit
//switch 문을 활용해서 튜플에 저장된 값을 매칭시키는 방법에 대해 공부합니다.
/*:
 # Tuple Matching
 */

//let resolution = (3840.0, 2160.0)

let resolution = (1920.0, 1080.0)

// 이런 코드를 아래의 스위치문을 이용하면 단순해짐
if resolution.0 == 3840 && resolution.1 == 2160 {
    print("4K")
}

// 스위치문은 튜플 매칭을 지원해줌 ===> 코드 단순해짐

switch resolution {
case (3840, 2160):
    print("4K")
default:
    break
}


switch resolution {
case let (w, h) where w / h == 16.0 / 9.0:   // 밸류 바인딩
    print("16:9")
case (_, 1080):                             // 와일드카드 패턴
    print("1080p")
case (3840...4096, 2160):                   // 인터벌 매칭
    print("4K")
default:
    break
}


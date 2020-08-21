
import UIKit

/*:
 # Labeled Statement
 
 ## Syntax
 ![labeled](labeled.png)
 ![usinglabel](usinglabel.png)
 */
// 반복문, if문, switch문에서 사용
// 문장에 이름을 붙이기 ===> 주로 반복문이 중첩되어 있을때, 가장 인접한 문장이 아닌 원하는 문장을 종료할때 사용


outer: for i in 1...3 {
    print("OUTER  LOOP", i)

    for j in 1...3 {
        print("   inner loop", j)

        break outer  // 이름붙인 문장을 종료
    }
}



















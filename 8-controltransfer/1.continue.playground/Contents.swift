
import UIKit

/*:
 # continue
 */
// 반복문에서만 사용(while문 포함)

// continue는 반복문을 다음 싸이클로 보냄

for index in 1...10 {

    if index % 2 == 0 {
        continue
    }

    print(index)
}



for i in 1...10 {
    print("OUTER LOOP", i)

    for j in 1...10 {
        if j % 2 == 0 {
            continue     // 현재실행중인 반복을 중지 => 다음반복을 실행 (가장인접한 반복문에 영향을 줌)
        }

        print(" inner loop", j)
    }
}











import UIKit

/*:
 # break
 */
// 1)반복문과 2)스위치문에서 사용
// 현재 실행중인 문장을 중지하고 다음문장을 실행(다음 문장으로 제어를 전달)



// break ===> "문장다음"으로 제어를 전달
// 1. 문장을 중지한다 2. 문장이 중첩되어 있을 경우 가장 인접한 문장을 중지한다.
// continue ===> "다음회차" 반복으로 제어를 전달함



let num = 20

switch num {
case 1...10:
    print("begin block")
    if num % 2 != 0 {
        break     // 스위치문을 종료
    }
    print("end block")
default:
    print("something")
}


switch num {
case 1...10:
    print("begin block")
    if num % 2 != 0 {
        break
    }
    print("end block")
case 11...20:
    print("began block")
default:
    break
}


print("done")




for index in 1...10 {
    print(index)

    if index > 1 {
        break       // (가장인접한)문장을 종료
    }
}


for i in 1...10 {
    print("OUTER LOOP", i)

    for j in 1...10 {
        print("  inner loop", j)

        if j > 1{
            break       // (가장인접한)문장을 종료
        }
    }
}


var num2 = 1


while  num2 < 5 {
    print("num2 프린트중...\(num2)")

    if num2 == 2 {
        break
    }

    num2 += 1
}






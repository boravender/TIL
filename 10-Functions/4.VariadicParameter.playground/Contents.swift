
import UIKit
//하나의 파라미터를 통해 두 개 이상의 값을 전달하는 가변 파라미터에 대해 공부합니다.
/*:
 # Variadic Parameters
 ![variadic](variadic.png)
 */

// 가변 파라미터

print("Hello")

print("Hello", "Swift")   //2개의 아규먼트




func printSum(of nums: Int...) {   // 배열형태로 전달됨
    var sum = 0
    for num in nums {
        sum += num
    }
    print(sum)
}

printSum(of: 1)

printSum(of: 1, 2, 3)

printSum(of: 1, 2, 3, 4, 5)



// 1) 하나의 파라미터로 2개이상의 아규먼트를 전달할 수 있다.
// 2) 아규먼트는 배열형태로 전달된다.
// 3) 가변 파라미터는 개별함수마다 하나씩만 선언할 수있다.(선언 순서는 상관없음)
// 4) 가변 파라미터는 기본값을 가질 수 없다.



func av(of nums: Double...) {
    var sum = 0.0
    for n in nums {
        sum += n
    }
    
    print(sum / Double(nums.count))
}

av(of: 1,3,5,7,9)
av(of: 24,90,87,35)







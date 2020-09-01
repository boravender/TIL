//: [Previous](@previous)

import Foundation



print("Start")


// 코드의 실행 지연시키기
DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
    print("End")
})


DispatchQueue.main.asyncAfter(deadline: .now() + 5) {     //문법 최적화
    print("End")
}


//: [Previous](@previous)

import Foundation

/*:
 # Interval Matching(범위 매칭)
 */


let temperature = -8

switch temperature{
case ..<10:
    print("Cold")
case 11...20:
    print("Cool")
case 21...27:
    print("Warm")
case 28... :
    print("Hot")
default:
    break
}


//: [Next](@next)

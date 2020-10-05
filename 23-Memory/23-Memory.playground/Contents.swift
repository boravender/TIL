import UIKit

/*
 
 ** Value Types & Reference Types
 struct는 stack의 메모리 공간에 생성 => Value Types
 class는 stack에 메모리 주소 저장, heap에 메모리 저장되어 있음 => Reference Types
 
 ** Automatic Reference Counting
 ARC => Heap에 저장되는 데이터를 관리하는 것(Class의 Instance memory 관리)
 참조 카운트가 1이상이면 메모리에 유지되고, 0이면 메모리에서 제거됨
 
 ** Strong Reference Cycle
 * Weak Reference
 Optional 형식으로 선언
 참조하는 Insatnace 해제되면 자동으로 nil로 초기화
 * Unowned Reference
 Optional 형식 아님
 참조 Cycle을 해결하면서, Property를 non-Optional로 선언해야할 때 주로 사용
 Instance 생명주기가 소유자와 갗거나, 더 긴 경우 주로 사용
 
 */

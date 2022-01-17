// Array Declaration

// 1. 기본 방법
var myIntArrayBasic: Array<Int> = [1, 3, 5, 7, 9]

// 2. 축약형
var myIntArrayShort: [Int] = [1, 3, 5, 7, 9]

// 3. 배열 타입의 추측을 위한 문법
var myIntArrayGuess: [1, 3, 5, 7, 9]

// 배열 선언 시 배열 요소는 선언하지 않으려면
var myIntArrayNoElements: [Int] = []

// 다중 배열 선언하기
var my2DArray: [[Int]] = [[1, 2], [10, 11], [20, 30]]

// Picking array elements

// Using index number to pick an element
var someNumber = myIntArrayBasic[2]
// someNumber == 5

// Repeat
for element in myIntArrayBasic {
    print(element)
}

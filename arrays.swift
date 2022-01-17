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

// 배열 요소 중 일정 범위에 속한 배열 요소를 가져올 때
var someSubset = myIntArrayBasic[2...4]

// 2차원 배열에서 특정 배열 요소를 직접 가져오는 방식은 다음과 같다
var element = my2DArray[0][0]

// 배열 요소 추가
myIntArrayBasic.append(11)

// 기존 배열의 특정 인덱스 위치에 요소 삽입하기
myIntArrayBasic.insert(4, at: 2)

// 배열 요소 삭제
myIntArrayBasic.removeLast()

// 특정 인덱스 위치의 요소를 삭제하는 방법
myIntArrayBasic.remove(at: 2)

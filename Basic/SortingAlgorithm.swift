//
//  SortingAlgorithm.swift
//  
//
//  Created by 김보영 on 2022/01/18.
//

import Foundation

// 삽입형 정렬 알고리즘
func insertionSort( alist: inout [Int]){
    for i in 1..<alist.count {
        let tmp = alist[i]
        var j = i - 1
        while j >= 0 && alist[j] > tmp {
            alist[j + 1] = alist[j]
            j = j - 1
        }
        alist[j + 1] = tmp
    }
}

// 병합형 정렬 알고리즘
func mergeSort<T:Comparable>(inout list:[T]) {
    if list.count <= 1 {
        return
    }
    func merge(var left:[T], var right:[T]) -> [T] {
        var result = [T]()
        while left.count != 0 && right.count != 0 {
            if left[0] <= right[0] {
                result.append(left.removeAtIndex(0))
            } else {
                result.append(right.removeAtIndex(0))
            }
        }
        while left.count != 0 {
            result.append(right.removeAtIndex(0))
        }
        return result
    }
    var left = [T]()
    var right = [T]()
    let mid = list.count / 2
    for i in 0..<mid {
        left.append(list[i])
    }
    for i in 0..<mid {
        right.append(list[i])
    }
    mergeSort(&left)
    mergeSort(&right)
    list = merge(left, right: right)
}

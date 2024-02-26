//
//  SortingAlgo.swift
//  DataStructures
//
//  Created by cumulations on 26/02/24.
//

import Foundation


class SortingAlgorithms{
    func bubbleSort<T: Comparable>(_ array: inout [T]) {
        let n = array.count
        for _ in 0..<n {
            for j in 0..<n - 1 {
                if array[j] > array[j + 1] {
                    array.swapAt(j, j + 1)
                }
            }
        }
    }
    
    func sorting<T: Comparable>(_ array: inout [T]) {
        for i in 0..<array.count - 1{
            for j in i..<array.count{
                if array[i] > array [j] {
                    let temp = array[j]
                    array[j] = array[i]
                    array[i] = temp
                }
            }
        }
    }
    
    func mergeSort<T: Comparable>(_ array: [T]) -> [T]{
        guard array.count > 1 else{
            return array
        }
        let middle = array.count / 2
        let leftArray = mergeSort(Array(array[0..<middle]))
        let rightArray = mergeSort(Array(array[middle..<array.count]))
        return merge(leftArray: leftArray, rightArray: rightArray)
    }
    
    func merge<T:Comparable>(leftArray:[T],rightArray:[T]) -> [T]{
        var leftIndex = 0
        var rightIndex = 0
        var newArray: [T] = []
        while leftIndex < leftArray.count && rightIndex < rightArray.count{
            if leftArray[leftIndex] < rightArray[rightIndex] {
                newArray.append(leftArray[leftIndex])
                leftIndex += 1
            } else {
                newArray.append(rightArray[rightIndex])
                rightIndex += 1
            }
        }
        newArray += Array(leftArray[leftIndex..<leftArray.count])
        newArray += Array(rightArray[rightIndex..<rightArray.count])
        return newArray
    }
    func selectionSort<T:Comparable>(_ array : [T]) -> [T]{
        return array
    }
}

//
//  SearchingAlgo.swift
//  DataStructures
//
//  Created by cumulations on 15/01/24.
//

import Foundation


class SearchAlgorithms<T: Comparable>{
    func linearSearch(_ elements:[T], item: T) -> (Int?,Bool){
        let startTime = Date()
        defer {
            let endTime = Date()
            let elapsedTime = endTime.timeIntervalSince(startTime)
            print("time taken for search \(elapsedTime)")
        }
        for i in 0..<elements.count{
            if elements[i] == item{
                return (i,true)
            }
        }
        return(nil,false)
    }
    
    
    func binarySearch(_ elements:[T], item: T) -> (Int?,Bool){
        let startTime = Date()
        defer {
            let endTime = Date()
            let elapsedTime = endTime.timeIntervalSince(startTime)
            print("time taken for search \(elapsedTime)")
        }
        var start = 0
        var end = elements.count - 1
        
        while (start <= end){
            let middle = Int((start + end)/2)
            if elements[middle] == item{
                return (middle,true)
            }else if(elements[middle] > item){
                end = middle - 1
            }else{
                start = middle + 1
            }
        }
        
        return (nil,false)
    }
    
//    func binarySearch(_ elements: [T], item: T) -> (Int?,Bool) {
//           var low = 0
//           var high = elements.count - 1
//           
//           while low <= high {
//               let mid = (low + high) / 2
//               if elements[mid] == item {
//                   return (mid - 1,true)
//               } else if elements[mid] < item {
//                   low = mid + 1
//               } else {
//                   high = mid - 1
//               }
//           }
//           
//           return (nil,false)
//       }
}

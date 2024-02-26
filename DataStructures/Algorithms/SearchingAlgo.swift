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
        var end = elements.count
        var middle = Int((start + end)/2)
        while (start > end){
            if elements[middle] == item{
                return (middle,true)
            }else if(elements[middle] > item){
                end = middle
                middle = Int((start + end)/2)
            }else{
                start = middle
                middle = Int((start + end)/2)
            }
        }
        
        return (nil,false)
    }
}

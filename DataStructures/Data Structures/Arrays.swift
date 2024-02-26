//
//  Arrays.swift
//  SwiftUITests
//
//  Created by admin on 12/28/23.
//

import Foundation
class Arrays<T: Hashable>{
    func nonOdd(_ elements:[T]) -> T?{
        var dic = [T:Int]()
        for i in elements{
            dic[i, default: 0] += 1
        }
        
        for i in dic.keys{
            if dic[i]! % 2 != 0{
                return i
            }
        }
        return nil
    }
    
    func checkMissingNumber(_ elements: [Int]){
        var sum = 0
        for i in elements{
            sum += i
        }
        let originalSum = Int(((elements.count + 2) * (elements.count + 1)) / 2)
        
        print(originalSum - sum)
    }
    
    func findLeaders(in arr: [Int]) -> [Int] {
      var leaders = [Int]()
      var currentMax = Int.min
      for element in arr.reversed() {
        if element > currentMax {
          leaders.append(element)
          currentMax = element
        }
      }
      return leaders
    }

}

class Solution {
    var a = [1,1,2,3,4,4,5]
    func insert(_ value:Int, at index: Int){
        let last = a[a.count - 1]
        for i in (index..<a.count - 1).reversed(){
            a[i + 1] = a[i]
        }
        a[index] = value
        a.append(last)
        print(a)
        a.insert(10, at: 1)
    }
}

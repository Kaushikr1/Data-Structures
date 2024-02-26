//
//  Stacks.swift
//  SwiftUITests
//
//  Created by admin on 12/28/23.
//

import Foundation

protocol StackProtocol {
    associatedtype Element
    mutating func push(_ element: Element)
    mutating func pop() -> Element?
    func peek() -> Element?
}

class Stacks<T> : StackProtocol{
    typealias Element = T
    var stack:[T] = []
    func push(_ element: T) {
        stack.append(element)
    }
    
    func pop() -> T? {
        return stack.popLast()
    }
    
    func peek() -> T? {
        return stack.last
    }
}

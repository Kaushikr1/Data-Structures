//
//  Queues.swift
//  SwiftUITests
//
//  Created by admin on 12/28/23.
//

import Foundation
protocol QueueProtocol {
    associatedtype Element
    mutating func enqueue(_ element: Element)
    mutating func dequeue() -> Element?
    func front() -> Element?
    func peep() -> Element?
    func printQueue()
}
class SingleEndedQueue<T: Equatable> : QueueProtocol{
    typealias Element = T
    var queue = LinkedLists<T>()
    func enqueue(_ element: T) {
        queue.insert(value: element)
    }
    
    func dequeue() -> T? {
        return queue.removeHead()
    }
    
    func front() -> T? {
        return queue.head?.value
    }
    
    func peep() -> T? {
        return queue.getLast()
    }
    func printQueue(){
        queue.printList()
    }
}

class DoubleEndedQueue<T: Equatable> : QueueProtocol{
    typealias Element = T
    var queue = LinkedLists<T>()
    func enqueue(_ element: T) {
        queue.insert(value: element)
    }
    
    func dequeue() -> T? {
        return queue.removeHead()
    }
    
    func front() -> T? {
        return queue.head?.value
    }
    
    func peep() -> T? {
        return queue.getLast()
    }
    func printQueue(){
        queue.printList()
    }
    
    func insertAtfront(_ element: T){
        queue.addNewHead(value: element)
    }
    
    func deleteLast(_ element: T) -> T?{
        return queue.deleteLast()
    }
}

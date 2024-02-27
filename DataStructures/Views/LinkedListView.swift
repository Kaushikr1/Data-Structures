//
//  LinkedListView.swift
//  DataStructures
//
//  Created by cumulations on 27/02/24.
//

import SwiftUI

struct LinkedListView: View {
    @StateObject var linkedList = LinkedLists<Int>()
    @State private var inputValue: String = ""
    
    var body: some View {
        
        VStack {
            TextField("Enter a number", text: $inputValue)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            HStack {
                Button("Insert") {
                    if let value = Int(inputValue) {
                        linkedList.insert(value: value)
                        inputValue = ""
                    }
                } .padding()
                Button("Remove Head") {
                    if let value = Int(inputValue) {
                        linkedList.removeHead()
                        inputValue = ""
                    }
                } .padding()
                Button("Remove Value") {
                    if let value = Int(inputValue) {
                        linkedList.remove(value: value)
                        inputValue = ""
                    }
                } .padding()
                Button("Reverse Linked") {
                    if let value = Int(inputValue) {
                        linkedList.reverseLinkedList()
                        inputValue = ""
                    }
                } .padding()
            }.padding()
            Text("Linked List:")
            List {
                ForEach(linkedListAsArray(), id: \.self) { value in
                    Text("\(value)")
                }
            }
        }
        .padding()
    }
    
    func linkedListAsArray() -> [Int] {
          var array = [Int]()
          var current = linkedList.head
          while current != nil {
              array.append(current!.value)
              current = current?.next
          }
          return array
      }
}

#Preview {
    LinkedListView()
}

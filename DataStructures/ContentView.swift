//
//  ContentView.swift
//  DataStructures
//
//  Created by cumulations on 15/01/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    let searchAlgorithms = SearchAlgorithms<Int>()
    let numbers = [1, 6, 3, 4, 5, 4, 7, 2, 9, 10]
    let target = 6
    
    @StateObject var linkedList = LinkedLists<Int>()
    @State private var inputValue: String = ""
    
    var body: some View {
        VStack {
            Text("Numbers: \(numbers.description)")
            Text("Target: \(target)")
            Button("Linear Search") {
                let (index, found) = self.searchAlgorithms.linearSearch(self.numbers, item: self.target)
                if found {
                    print("Linear Search: Found at index \(index!)")
                } else {
                    print("Linear Search: Not found")
                }
            }
            .padding()
            
            Button("Binary Search") {
                let (index, found) = self.searchAlgorithms.binarySearch(self.numbers.sorted(), item: self.target)
                if found {
                    print("Binary Search: Found at index \(index!)")
                } else {
                    print("Binary Search: Not found")
                }
            }
            .padding()
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

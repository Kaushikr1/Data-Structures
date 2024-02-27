//
//  SearchView.swift
//  DataStructures
//
//  Created by cumulations on 27/02/24.
//

import SwiftUI

struct SearchView: View {
    
    let searchAlgorithms = SearchAlgorithms<Int>()
    let numbers = [15, 6, 3, 4, 5, 4, 7, 2, 9, 10]
    let target = 15
    @State private var index: Int?
    
    var body: some View {
        VStack {
            Text("Numbers: \(numbers.description)")
            Text("Target: \(target)")
            HStack{
                Button("Linear Search") {
                    let (index, found) = self.searchAlgorithms.linearSearch(self.numbers, item: self.target)
                    if found {
                        self.index = index
                        print("Linear Search: Found at index \(index!)")
                    } else {
                        print("Linear Search: Not found")
                    }
                }
                .padding()
                
                Button("Binary Search") {
                    let (index, found) = self.searchAlgorithms.binarySearch(self.numbers.sorted(), item: self.target)
                    if found {
                        self.index = index
                        print("Binary Search: Found at index \(index!)")
                    } else {
                        print("Binary Search: Not found\(self.numbers.sorted())")
                    }
                }
                .padding()
                
                Text("Found at index:  \(index ?? -1)").padding()
            }
        }
    }
}

#Preview {
    SearchView()
}

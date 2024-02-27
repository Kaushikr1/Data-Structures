//
//  SortView.swift
//  DataStructures
//
//  Created by cumulations on 27/02/24.
//

import SwiftUI

struct SortView: View {
    @State private var numbers = [5, 2, 9, 3, 7, 1, 8, 4, 6]
    @State private var sortedNumbers: String = ""

    var body: some View {
        VStack {
            Text("Unsorted: \(numbers.description)")
            Button("Bubble Sort") {
                SortingAlgorithms().bubbleSort(&numbers)
                sortedNumbers = numbers.description
            }
            Button("Sort") {
                SortingAlgorithms().sorting(&numbers)
                sortedNumbers = numbers.description
            }
            Button("Merge Sort") {
                numbers = SortingAlgorithms().mergeSort(numbers)
                sortedNumbers = numbers.description
            }
            Text("Sorted: \(sortedNumbers)")
        }
        .padding()
    }
}

#Preview {
    SortView()
}

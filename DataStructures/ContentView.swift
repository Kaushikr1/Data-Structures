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
    let numbers = [15, 6, 3, 4, 5, 4, 7, 2, 9, 10]
    let target = 15
    @State private var index: Int?


    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: ArrayViews()) {
                    Text("Array View")
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                NavigationLink(destination: StackView()) {
                    Text("Stack View")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                NavigationLink(destination: QueueView()) {
                    Text("Queue View")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: LinkedListView()) {
                    Text("Linked List View")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: SearchView()) {
                    Text("Search View")
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                NavigationLink(destination: SortView()) {
                    Text("Sort View")
                        .padding()
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
               
            }
            .navigationBarTitle("Main Menu")
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

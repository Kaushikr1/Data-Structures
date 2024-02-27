//
//  StackView.swift
//  DataStructures
//
//  Created by cumulations on 27/02/24.
//

import SwiftUI

struct StackView: View {
    @State private var stack = Stacks<Int>()
    @State private var inputValue: String = ""
    @State private var poppedValue: Int?
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter a number", text: $inputValue)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Push") {
                    if let value = Int(inputValue) {
                        stack.push(value)
                        inputValue = ""
                    }
                }
                .padding()
            }
            
            Button("Pop") {
                poppedValue = stack.pop()
            }
            .padding()
            
            Text("Top of stack: \(stack.peek() ?? -1)")
                .padding()
            
            if let poppedValue = poppedValue {
                Text("Popped value: \(poppedValue)")
                    .padding()
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    StackView()
}

//
//  ArrayViews.swift
//  DataStructures
//
//  Created by cumulations on 27/02/24.
//

import SwiftUI

struct ArrayViews: View {
    let arrays = Arrays<Int>()
    let elementsArray:[Int] = [1,1,2,3,4,4,5]
    
    var body: some View {
        VStack {
            Text("Elements: \(elementsArray.description)")
            
            Text("Non-odd element: \(arrays.nonOdd(elementsArray) ?? -1)")
            
            Text("Missing number: \(arrays.checkMissingNumber(elementsArray).description)")
        }
        .padding()
    }
}

#Preview {
    ArrayViews()
}

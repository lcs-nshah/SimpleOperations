//
//  MultiplicationView.swift
//  SimpleOperations
//
//  Created by Neil Shah on 2025-02-12.
//

import SwiftUI

struct MultiplicationView: View {
    
    // MARK: Stored Properties
    @State var multiplicand: Int = 1
    @State var multiplier: Int = 1
    
    // MARK: Computed Properties
    var difference: Int {
        return multiplicand * multiplier
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    MultiplicationView()
}

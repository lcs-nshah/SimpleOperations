//
//  DivisionView.swift
//  SimpleOperations
//
//  Created by Neil Shah on 2025-02-12.
//

import SwiftUI

struct DivisionView: View {
    
    // MARK: Stored Properties
    @State var dividend: Int = 1
    @State var divisor: Int = 1
    
    // MARK: Computed Properties
    var quotient: Int {
        return dividend / divisor
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    DivisionView()
}

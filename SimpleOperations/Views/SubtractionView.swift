//
//  SubtractionView.swift
//  SimpleOperations
//
//  Created by Neil Shah on 2025-02-12.
//

import SwiftUI

struct SubtractionView: View {
    
    // MARK: Stored Properties
    @State var firstNumber: Int = 1
    @State var secondNumber: Int = 1
    
    // MARK: Computed Properties
    var difference: Int {
        return firstNumber - secondNumber
    }
    
    var body: some View {
        VStack(alignment: .trailing) {
            Spacer()
            
            //First number
            HStack {
                Spacer()
                Text("\(firstNumber)")
            }
            .font(.system(size: 75))
            
            Stepper(value: $firstNumber, label: {
                Text("First Number")
                    .font(.system(size: 22.0, weight: .light, design: .default))
            })

        }
    }
}

#Preview {
    SubtractionView()
}

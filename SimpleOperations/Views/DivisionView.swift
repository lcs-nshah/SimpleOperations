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
        VStack(alignment: .trailing) {
            Spacer()
            
            //First number
            HStack {
                Spacer()
                Text("\(dividend)")
                    .font(.system(size: 75))
            }
            
            Stepper(value: $dividend, label: {
                Text("Dividend")
                    .font(.system(size: 22.0, weight: .light, design: .default))
            })
            
            //Second number
            HStack {
                Text("\(Image(systemName: "divide"))")
                    .font(.system(size: 50))
                Spacer()
                Text("\(divisor)")
                    .font(.system(size: 75))
            }
            
            Stepper(value: $divisor, label: {
                Text("Divisor")
                    .font(.system(size: 22.0, weight: .light, design: .default))
            })
            
            // Answer
            Rectangle()
                .frame(height: 5)
            
            Text("\(quotient)")
                .font(.system(size: 75))
            
            Spacer()
        }
        .padding(25)
    }
}

#Preview {
    DivisionView()
}

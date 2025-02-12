//
//  AdditionView.swift
//  SimpleOperations
//
//  Created by Neil Shah on 2025-02-12.
//

import SwiftUI

struct AdditionView: View {
    
    // MARK: Stored Properties
    @State var firstNumber: Int = 1
    @State var secondNumber: Int = 1
    
    // MARK: Computed Properties
    var sum: Int {
        return firstNumber + secondNumber
    }
    
    var body: some View {
        VStack (alignment: .trailing) {
            Spacer()
            
            HStack {
                Spacer()
                Text("\(firstNumber)")
                    .font(.system(size: 75))
            }
            
            Stepper(value: $firstNumber, label: {
                Text("First Number")
            })
            
            HStack {
                Text("\(Image(systemName: "plus"))")
                    .font(.system(size: 50))
                Spacer()
                Text("\(secondNumber)")
                    .font(.system(size: 75))
            }
            
            Stepper(value: $secondNumber, label: {
                Text("Second Number")
            })
            
            Rectangle()
                .frame(height: 5)
            
            Text("\(sum)")
                .font(.system(size: 75))
            
            
            Spacer()
        }
        .padding(25)
    }
}

#Preview {
    AdditionView()
}

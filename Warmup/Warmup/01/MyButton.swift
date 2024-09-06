//
//  MyButton.swift
//  Warmup
//
//  Created by 박정륭 on 7/22/24.
//

import SwiftUI

struct MyButton: View {
    var buttonTitle: String
    var buttonColor: Color
    
    var body: some View {
        Button {
            
        } label: {
            Text(buttonTitle)
                .padding()
                .background(buttonColor)
                .foregroundColor(.white)
                .font(.headline)
                .cornerRadius(10)
        }
    }
}

#Preview {
    MyButton(buttonTitle: "Button", buttonColor: .brown)
}

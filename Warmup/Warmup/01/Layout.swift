//
//  Layout.swift
//  Warmup
//
//  Created by 박정륭 on 7/22/24.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        VStack{
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200,height: 200)
                .padding()
            
            Text("Text Element 1")
                .font(.headline)
                .padding()
            Text("Text Element 2")
                .font(.subheadline)
                .padding()
            Text("Text Element 3")
                .font(.body)
                .padding()
            
            HStack {
                MyButton(buttonTitle: "Button 1", buttonColor: .blue)
                MyButton(buttonTitle: "Button2", buttonColor: .green)

            }
            
            Button {
                
            } label : {
                VStack{
                    Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                    Text("Complex Button")
                }
                    .foregroundColor(.white)
                    .padding()
                    .background(.orange)
                    .cornerRadius(10)
                
            }
        }
    }
}

#Preview {
    Layout()
}

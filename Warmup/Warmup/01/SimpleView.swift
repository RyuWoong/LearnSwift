//
//  SimpleView.swift
//  Warmup
//
//  Created by 박정륭 on 7/22/24.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        Image(systemName: "pencil")
            .resizable()
            .scaledToFit()
            .frame(width: 200,height: 200)
        
        Text("헤드라인 입니다")
            .font(.headline)
            .bold()
            .padding()
        
        Text("서브 헤드라인 입니다")
            .font(.subheadline)
            .padding()
        
        Text("바디 입니다")
            .font(.body)
            .padding()
        
        Button {
            // action
            
        } label: {
            Text("Click Me")
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .bold()
        }
        
        
    }
}

#Preview {
    SimpleView()
}

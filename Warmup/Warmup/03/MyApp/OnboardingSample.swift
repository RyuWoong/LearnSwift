//
//  Onboarding1.swift
//  Warmup
//
//  Created by 박정륭 on 7/24/24.
//

import SwiftUI

struct OnboardingSample: View {
    
    let title: String
    let backgroundColor: Color
    var canClose: Bool = false
    @Binding var showModal: Bool
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            Text(title)
            if canClose {
                VStack{
                    Text("온보딩3")
                    Button {
                         showModal = false
                    } label: {
                        Text("Start")
                    }
                    
                }
            }
        }
    }
}

#Preview {
    OnboardingSample(title: "온보딩 테스트",backgroundColor: .blue,showModal: .constant(true))
}

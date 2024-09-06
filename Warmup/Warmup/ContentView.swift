//
//  ContentView.swift
//  Warmup
//
//  Created by 박정륭 on 7/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
            
            Image(systemName: "globe")
                .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("AccentColor"))
            Text("Hello, wrold!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

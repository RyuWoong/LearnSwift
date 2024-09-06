//
//  MyApp.swift
//  Warmup
//
//  Created by 박정륭 on 7/23/24.
//

import SwiftUI

struct MyApp: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        TabView {
           FirstList()
                .tabItem {
                    Label("first", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("두번째 페이지")
                .tabItem {
                    Label("second", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("세번째 페이지")
                .tabItem {
                    Label("third", systemImage: "tray.and.arrow.down.fill")
                }
        }
        .sheet(isPresented: $showModal, content: {
            TabView {
                OnboardingSample(title: "온보딩1",backgroundColor: .blue,showModal: $showModal)
            
                OnboardingSample(title: "온보딩2",backgroundColor: .green,showModal: $showModal)

                OnboardingSample(title: "온보딩2",backgroundColor: .green,canClose:true,showModal: $showModal)
                
               
            }
            .tabViewStyle(.page)
        })
        .onAppear{
            showModal = true
        }
    }
}

#Preview {
    MyApp()
}

//
//  TabView.swift
//  Warmup
//
//  Created by 박정륭 on 7/23/24.
//

import SwiftUI

struct MyTab: View {
    var body: some View {
        TabView {
            TabDetail()
//                .badge(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).tabItem { Label("Received2",systemImage: "tray.and.arrow.down.fill") }
            TabDetail2()
//                .badge("Ryuwoong").tabItem { Label("Sent2",systemImage: "tray.and.arrow.up.fill") }
            TabDetail3()
            /*.tabItem { Label("Account2",systemImage: "person.crop.circle.fill") }*/
        }
//        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    MyTab()
}

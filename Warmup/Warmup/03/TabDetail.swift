//
//  TabDetail.swift
//  Warmup
//
//  Created by 박정륭 on 7/23/24.
//

import SwiftUI

struct TabDetail: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text("this is detail")
        }
    }
}

struct TabDetail2: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Text("this is detail")
        }
    }
}


struct TabDetail3: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("this is detail")
        }
    }
}


#Preview {
    TabDetail()
}

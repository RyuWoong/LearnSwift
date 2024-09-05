//
//  TutorialApp.swift
//  Tutorial
//
//  Created by Willy on 8/27/24.
//

import SwiftUI

@main
struct TutorialApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}

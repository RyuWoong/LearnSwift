//
//  UITutorialApp.swift
//  UITutorial
//
//  Created by 박정륭 on 9/6/24.
//

import SwiftUI

@main
struct UITutorialApp: App {
    @StateObject private var store = ScrumStore()
    
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums) {
                Task {
                    do {
                        try await store.save(scrums: store.scrums)
                    } catch {
                        fatalError(error.localizedDescription)
                    }
                }
            }
            .task {
                do {
                    try await store.load()
                } catch {
                    fatalError(error.localizedDescription)
                }
            }
        }
    }
}

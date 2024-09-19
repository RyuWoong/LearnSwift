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
    @State private var errorWrapper: ErrorWrapper?
    @State private var isLoad = false;
    
    var body: some Scene {
        WindowGroup {
            if isLoad {
                ScrumsView(
                    scrums: $store.scrums
                ) {
                    Task {
                        do {
                            try await store.save(
                                scrums: store.scrums
                            )
                            print(
                                "DEBUG: Scrums saved successfully"
                            )
                        } catch {
                            errorWrapper = ErrorWrapper(
                                error: error,
                                guidance: "Try again later."
                            )
                        }
                    }
                }
            } else {
                ProgressView(
                    "Loading..."
                )
                .task {
                    do {
                        try await store.load()
                        print(
                            "DEBUG: Store loaded successfully"
                        )
                        isLoad = true;
                    } catch {
                        errorWrapper = ErrorWrapper(
                            error: error,
                            guidance: "Scrumdinger will load sample data and continue."
                        )
                    }
                }
                .sheet(
                    item: $errorWrapper
                ) {
                    store.scrums = DailyScrum.sampleData
                    isLoad = true;
                } content: { wrapper in
                    ErrorView(
                        errorWrapper: wrapper
                    )
                }
            }
        }
    }
}



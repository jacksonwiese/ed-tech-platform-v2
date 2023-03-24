//
//  ed_tech_platformApp.swift
//  ed-tech-platform
//
//  Created by Jackson Wiese on 3/24/23.
//

import SwiftUI

@main
struct ed_tech_platform: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}

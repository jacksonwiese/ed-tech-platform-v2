//
//  ed_tech_platformApp.swift
//  ed-tech-platform
//
//  Created by Jackson Wiese on 3/24/23.
//

import SwiftUI

@main
struct ed_tech_platformApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

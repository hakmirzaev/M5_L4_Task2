//
//  M5_L4_Task2App.swift
//  M5_L4_Task2
//
//  Created by Bekhruz Hakmirzaev on 26/11/22.
//

import SwiftUI

@main
struct M5_L4_Task2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

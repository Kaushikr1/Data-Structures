//
//  DataStructuresApp.swift
//  DataStructures
//
//  Created by cumulations on 15/01/24.
//

import SwiftUI

@main
struct DataStructuresApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

//
//  Recipe_WorldApp.swift
//  Recipe World
//
//  Created by Haider  Akbar on 02/03/2022.
//

import SwiftUI

@main
struct Recipe_WorldApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

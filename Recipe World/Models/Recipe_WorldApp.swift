//
//  Recipe_WorldApp.swift
//  Recipe World
//
//  Created by Haider  Akbar on 02/03/2022.
//

import SwiftUI
import Firebase
import UIKit

@main
struct Recipe_WorldApp: App {
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext,dataController.container.viewContext)
             
        }
    }
}

extension Recipe_WorldApp {
    private func setupAuthentication() {
        FirebaseApp.configure()
    }
}

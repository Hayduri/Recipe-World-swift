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
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
            
        }
    }
}

extension Recipe_WorldApp {
    private func setupAuthentication() {
        FirebaseApp.configure()
    }
}

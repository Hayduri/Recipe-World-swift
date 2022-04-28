//
//  SettingsView.swift
//  Recipe World
//
//  Created by Nicklas Olabi on 28/04/2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
        Text("Settings")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

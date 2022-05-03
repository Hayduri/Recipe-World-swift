//
//  SettingsView.swift
//  Recipe World
//
//  Created by Nicklas Olabi on 28/04/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
        Text("Profile")
                .navigationTitle("Profile")
        }
        .navigationViewStyle(.stack)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

//
//  TabBar.swift
//  Recipe World
//
//  Created by Nicklas Olabi on 28/04/2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeScreenView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            CategoryView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            NewRecipeView()
                .tabItem {
                    Label("New", systemImage: "plus")
                }
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

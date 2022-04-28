//
//  HomeScreenView.swift
//  Recipe World
//
//  Created by Nicklas Olabi on 28/04/2022.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        NavigationView {
            List(Recipe.all) {recipe in
                Text(recipe.name)
                .navigationTitle("My saved recipes")
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}



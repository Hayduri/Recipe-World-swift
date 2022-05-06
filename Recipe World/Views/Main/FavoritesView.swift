//
//  FavoritesView.swift
//  Recipe World
//
//  Created by Nicklas Olabi on 28/04/2022.
//

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var recipeWorldViewModel: RecipeWorldViewModel
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipeWorldViewModel.recipes)
            }
            .navigationTitle("Your favorite recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}

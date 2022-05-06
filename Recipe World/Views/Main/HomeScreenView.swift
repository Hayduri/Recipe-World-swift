//
//  HomeScreenView.swift
//  Recipe World
//
//  Created by Nicklas Olabi on 28/04/2022.
//

import SwiftUI

struct HomeScreenView: View {
    @EnvironmentObject var recipeWorldViewModel: RecipeWorldViewModel
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipeWorldViewModel.recipes)
            }
            .navigationTitle("Browse recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
            .environmentObject(RecipeWorldViewModel())
    }
}



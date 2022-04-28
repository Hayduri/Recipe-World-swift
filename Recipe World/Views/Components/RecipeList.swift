//
//  RecipeList.swift
//  Recipe World
//
//  Created by Nicklas Olabi on 28/04/2022.
//

import SwiftUI

struct RecipeList: View {
    var recipes: [Recipe]
    var body: some View {
        VStack {
            HStack {
            Text("\(recipes.count) \(recipes.count > 1 ? "recipes" : "recipe")")
                .font(.headline)
                .fontWeight(.medium)
                Spacer()
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 140), spacing: 12)], spacing: 12) {
                ForEach(recipes) {
                    recipe in
                    NavigationLink(destination: RecipeSiteView(recipe: recipe)) {
                        RecipeCard(recipe: recipe)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
        RecipeList(recipes: Recipe.all)
        }
    }
}

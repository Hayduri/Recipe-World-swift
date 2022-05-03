//
//  CategoriesView.swift
//  Recipe World
//
//  Created by Nicklas Olabi on 28/04/2022.
//

import SwiftUI

struct CategoriesView: View {
    var category: Category
    @EnvironmentObject var recipeWorldViewModel: RecipeWorldViewModel
    
    var recipes: [Recipe] {
        return recipeWorldViewModel.recipes.filter{$0.category == category.rawValue}
    }
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
            }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView(category: Category.dessert)
            .environmentObject(RecipeWorldViewModel())
    }
}

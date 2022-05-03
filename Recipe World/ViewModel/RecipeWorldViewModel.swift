//
//  RecipeWorldViewModel.swift
//  Recipe World
//
//  Created by Nicklas Olabi on 03/05/2022.
//

import Foundation

class RecipeWorldViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    //Database data fetching to be implemented here
    init() {
        recipes = Recipe.all
    }
    
    func addNewRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}

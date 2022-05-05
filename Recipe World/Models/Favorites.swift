//
//  Favorites.swift
//  Recipe World
//
//  Created by Nicklas Olabi on 05/05/2022.
//

import Foundation

class Favorites: ObservableObject {
    private var recipes: Set<UUID>
    private let saveKey = "Favorites"
    
    init() {
        recipes = []
    }
    
    func contains(_ recipe: Recipe) -> Bool {
        recipes.contains(recipe.id)
    }
    
    func add(_ recipe: Recipe) {
        objectWillChange.send()
        recipes.insert(recipe.id)
        save()
    }
    
    func remove(_ recipe: Recipe) {
        objectWillChange.send()
        recipes.remove(recipe.id)
        save()
    }
    
    func save() {
        
    }
        
}

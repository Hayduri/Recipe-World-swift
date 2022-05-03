//
//  RecipeModel.swift
//  Recipe World
//
//  Created by Nicklas Olabi on 28/04/2022.
//

import Foundation
import SwiftUI

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let procedure: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(name: "Burger", image: "https://upload.wikimedia.org/wikipedia/commons/0/0b/RedDot_Burger.jpg", description: "Super delicous", ingredients: "Meat and bread", procedure: "Just do it", category: "Main", datePublished: "2019-11-11", url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"),
        Recipe(name: "Burger", image: "https://upload.wikimedia.org/wikipedia/commons/0/0b/RedDot_Burger.jpg", description: "Super delicous", ingredients: "Meat and bread", procedure: "Just do it", category: "Main", datePublished: "2019-11-11", url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"),
        Recipe(name: "Burger", image: "https://upload.wikimedia.org/wikipedia/commons/0/0b/RedDot_Burger.jpg", description: "Super delicous", ingredients: "Meat and bread", procedure: "Just do it", category: "Main", datePublished: "2019-11-11", url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"),
        Recipe(name: "Burger", image: "https://upload.wikimedia.org/wikipedia/commons/0/0b/RedDot_Burger.jpg", description: "Super delicous", ingredients: "Meat and bread", procedure: "Just do it", category: "Main", datePublished: "2019-11-11", url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"),
        Recipe(name: "Burger", image: "https://upload.wikimedia.org/wikipedia/commons/0/0b/RedDot_Burger.jpg", description: "Super delicous", ingredients: "Meat and bread", procedure: "Just do it", category: "Main", datePublished: "2019-11-11", url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"),

    ]
}

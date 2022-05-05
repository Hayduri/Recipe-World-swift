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
        Recipe(name: "Burger", image: "https://gastromand.dk/wordpress/wp-content/uploads/2019/03/burger.jpg", description: "This burger is like no other burger. This is simply fantastic! You have to try it", ingredients: "Burger buns, 500g minced beef, cheese, lettuce, tomato, about 1/4 cup of mayonnaise, about 1/4 cup of ketchup, 1/2 teaspoon salt", procedure: "1. form the burger pattys, add salt, and cook them on each side for about 5 min. Add the cheese when the patty is flipped. 2. Add some mayonnaise to the bun along with the lettuce. 3. Get everything together and enjoy ", category: "Main", datePublished: "2019-11-11", url: "https://mummum.dk/hjemmelavet-cheeseburger/#:~:text=Form%204%2D6%20hakkeb%C3%B8ffer%20og,agurker%20og%20til%20sidst%20overbolle."),
        Recipe(name: "Tacos", image: "https://cdn.pixabay.com/photo/2021/11/21/18/47/taco-6814963_1280.jpg", description: "Want to try some mexican food? This is the perfect mexican taco so rich in flavors. Taco is a common food in Mexico but known world wide. Super delicous!", ingredients: "1 pound lean (at least 80%) ground beef, 1 cup Old El Paso Thick 'n Chunky salsa, 10 Old Paso taco shells, 1/2 lettuce (shredded), 1 medium tomato (chopped), 1 cup shredded cheddar cheese", procedure: "1. Cook the beef over medium heat for 8 to 10 minutes, while stirring occasionally. 2. Stir the salsa into the beef. Heat to boiling, stirring constantly, while reducing the heat to medium-low. Cook for 5 minutes. Then pour the beef mixture into a large serving bowl. 3. Heat the taco shells as directed on the package. Serve the taco shells with the beef mixture, lettuce, tomato and cheese", category: "Side", datePublished: "2017-06-11", url: "https://www.bettycrocker.com/recipes/easy-beef-tacos/426c261d-b2eb-4e22-9cba-0066f3335591"),
        Recipe(name: "Strawberry smoothie", image: "https://media.istockphoto.com/photos/strawberry-smoothie-picture-id576740204?k=20&m=576740204&s=612x612&w=0&h=VXP2UJpXgj6s3tFFgQxZBXTVBsq0IGEgynaqurf1a_c=", description: "Have you met a perfect strawberry smoothie? Smoothies aren’t as easy to throw together it seems. Sure, you can throw random fruit and yogurt in the blender and whiz it up. But for the perfect creamy texture and the perfect just sweet enough fruit flavor? You’ve got to know something about smoothies. Alex and I have finally found our perfect strawberry smoothie recipe, which is below. Make it, memorize it, and make a perfect healthy smoothie on repeat!", ingredients: "2 cups of frozen strawberries, 1 banana, 1/4 cup greek yoghurt, 1 cup milk, 1 tablespoon maple syrup, 1/2 cup ice", procedure: "1. Place all ingredients in a blender, breaking the banana into pieces. 2. Blend until creamy and frothy, stopping and scraping down the sides as necessary. 3. If desired, garnish with a frozen strawberry and mint sprig.", category: "Drink", datePublished: "2021-07-09", url: "https://www.acouplecooks.com/perfect-strawberry-smoothie/"),
        
       
    ]
}

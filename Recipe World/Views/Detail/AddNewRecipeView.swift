//
//  AddNewRecipeView.swift
//  Recipe World
//
//  Created by Nicklas Olabi on 03/05/2022.
//

import SwiftUI

struct AddNewRecipeView: View {
    @State private var name: String = ""
    @State private var image: String = ""
    @State private var selectedCategory: Category = Category.breakfast
    @State private var ingredients: String = ""
    @State private var procedure: String = ""
    @State private var description: String = ""
    @State private var link: String = ""
    @State private var navigateToCurrentRecipe = false
   // @Environment(\.dismiss) var dismiss
    @EnvironmentObject var recipeWorldViewModel: RecipeWorldViewModel
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Title")) {
                    TextField("Recipe title", text: $name)
                }
                
                Section(header: Text("Image")) {
                    TextField("Link an image", text: $image)
                }
                
                Section(header: Text("Category")) {
                    Picker("Select category", selection: $selectedCategory) {
                        ForEach(Category.allCases) {
                            category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                }
                Section(header: Text("Procedure")) {
                    TextEditor(text: $procedure)
                }
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                }
                Section(header: Text("Link")) {
                    TextField("Link to a recipe", text: $link)
                }
            }
            .toolbar(content: {
               /* ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                    }
                } */
                ToolbarItem {
                    NavigationLink(isActive: $navigateToCurrentRecipe) {
                        RecipeSiteView(recipe: recipeWorldViewModel.recipes.sorted{$0.datePublished > $1.datePublished} [0])
                            .navigationBarBackButtonHidden(false)
                    } label: {
                        Button {
                            saveNewRecipe()
                            navigateToCurrentRecipe = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                        }
                    }
                    
                    .disabled(name.isEmpty)
                }
                
            })
            .navigationTitle("Add new recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddNewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewRecipeView()
    }
}

extension AddNewRecipeView {
    private func saveNewRecipe() {
        let time = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let dateOfPublishment = dateFormatter.string(from: time)
        let newRecipe = Recipe(name: name, image: image, description: description, ingredients: ingredients, procedure: procedure, category: selectedCategory.rawValue, datePublished: dateOfPublishment, url: link)
        recipeWorldViewModel.addNewRecipe(recipe: newRecipe)
    }
}

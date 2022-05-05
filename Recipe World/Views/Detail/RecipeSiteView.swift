//
//  RecipeSiteView.swift
//  Recipe World
//
//  Created by Nicklas Olabi on 28/04/2022.
//

import SwiftUI

struct RecipeSiteView: View {
    var recipe: Recipe
    @EnvironmentObject var favorites: Favorites
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) {image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.6))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            .frame(height: 250)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
            
                VStack(alignment: .leading, spacing: 30) {
                    if !recipe.ingredients.isEmpty {
                    Text("Ingredients")
                        .font(.headline)
                    
                    Text(recipe.ingredients)
                    }
                    
                    if !recipe.procedure.isEmpty {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Procedure")
                            .font(.headline)
                        
                        Text(recipe.procedure)
                    }
                    }
                    
                    if !recipe.description.isEmpty {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Description")
                            .font(.headline)
                        Text(recipe.description)
                    }
                    }
                    
                    if !recipe.url.isEmpty {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Link")
                            .font(.headline)
                        
                        Text(recipe.url)
                    }
                    }
                    
                    if !recipe.datePublished.isEmpty {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Date published:")
                            .font(.headline)
                        
                        Text(recipe.datePublished)
                    }
                    }
                    
                    Button(favorites.contains(recipe) ? "Remove from favorites" : "Add to favorites") {
                        if favorites.contains(recipe) {
                            favorites.remove(recipe)
                        } else {
                            favorites.add(recipe)
        
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.borderedProminent)
                    .padding()
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .padding()
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}


struct RecipeSiteView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeSiteView(recipe: Recipe.all[0])
            .environmentObject(Favorites())
    }
      
}

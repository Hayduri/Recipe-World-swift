//
//  NewRecipeView.swift
//  Recipe World
//
//  Created by Nicklas Olabi on 28/04/2022.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
        Text("New recipe")
                .navigationTitle("New recipe")
        }
        .navigationViewStyle(.stack)
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}

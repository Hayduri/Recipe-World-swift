//
//  CategoryView.swift
//  Recipe World
//
//  Created by Nicklas Olabi on 28/04/2022.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases) {
                    category in
                    NavigationLink {
                        CategoriesView(category: category)                        } label: {
                            Text(category.rawValue + "s")
                        }
                    }
                }
                .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}

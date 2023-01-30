//
//  RecipeData.swift
//  Cookcademy
//
//  Created by andrew austin on 1/28/23.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
    
    func recipes(for category: MainInformation.Category) -> [Recipe] {
        var filterRecipes = [Recipe]()
        for recipe in recipes {
            if recipe.mainInformation.category == category {
                filterRecipes.append(recipe)
            }
        }
        return filterRecipes
    }
}

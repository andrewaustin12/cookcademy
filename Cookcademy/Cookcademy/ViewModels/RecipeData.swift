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
    
    func add(recipe: Recipe) {
        if recipe.isValid {
            recipes.append(recipe)
        }
    }
    
    func index(of recipe: Recipe) -> Int? {
        for i in recipes.indices {
            if recipes[i].id == recipe.id {
                return i
            }
        }
        return nil
    }
}

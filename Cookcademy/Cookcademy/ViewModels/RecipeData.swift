//
//  RecipeData.swift
//  Cookcademy
//
//  Created by andrew austin on 1/28/23.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}

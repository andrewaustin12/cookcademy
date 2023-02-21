//
//  MainTableView.swift
//  Cookcademy
//
//  Created by andrew austin on 2/20/23.
//

import SwiftUI

struct MainTableView: View {
    @StateObject var recipeData = RecipeData()
    
    var body: some View {
        TabView {
            RecipeCategoryGridView()
                .tabItem {Label("Recipes", systemImage: "list.dash")}
            NavigationView {
                RecipesListView(viewStyle: .favorties)}
                .tabItem {Label("Favorites", systemImage: "heart.fill")}
            SettingsView()
                .tabItem {Label("Settings", systemImage: "gear")}
        }
        .environmentObject(recipeData)
    }
}

struct MainTableView_Previews: PreviewProvider {
    static var previews: some View {
        MainTableView()
    }
}

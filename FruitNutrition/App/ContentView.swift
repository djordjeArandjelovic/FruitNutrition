//
//  ContentView.swift
//  FruitNutrition
//
//  Created by Djordje Arandjelovic on 5.2.24..
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            } //: LIST
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

//MARK: - PREVIEW
#Preview {
    ContentView(fruits: fruitsData)
}

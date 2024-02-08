//
//  ContentView.swift
//  FruitNutrition
//
//  Created by Djordje Arandjelovic on 5.2.24..
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    var fruit: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruit.shuffled()) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            } //: LIST
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

//MARK: - PREVIEW
#Preview {
    ContentView(fruit: fruitsData)
}

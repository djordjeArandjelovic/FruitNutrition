//
//  ContentView.swift
//  FruitNutrition
//
//  Created by Djordje Arandjelovic on 5.2.24..
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
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
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button{
                        isShowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingsView()
                    })
                }
            }//: TOOLBAR
        } //: NAVIGATION
    }
}

//MARK: - PREVIEW
#Preview {
    ContentView(fruits: fruitsData)
}

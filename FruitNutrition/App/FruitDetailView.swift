//
//  FruitDetailView.swift
//  FruitNutrition
//
//  Created by Djordje Arandjelovic on 8.2.24..
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    
    //MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(Color(fruit.gradientColors[1]))
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        // SUBHEADING
                        Text("Learn more about \(fruit.title)".uppercased())
                            .foregroundStyle(Color(fruit.gradientColors[1]))
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL
            .ignoresSafeArea()
        } //:NAVIGATION
    }
}

//MARK: - PREVIEW
#Preview {
    FruitDetailView(fruit: fruitsData[0])
}

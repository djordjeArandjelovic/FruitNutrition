//
//  FruitCardView.swift
//  FruitNutrition
//
//  Created by Djordje Arandjelovic on 6.2.24..
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: IMAGE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                
                // FRUIT: TITLE
                Text("Blueberry")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // FRUIT: HEADLINE
                Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world.")
                    .foregroundStyle(Color(.white))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // BUTTON: START
            } //: VSTACK
        } //: ZSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .ignoresSafeArea() //:IGNORE SAFEAREA
    }
}

//MARK: - PREVIEW
#Preview {
    FruitCardView()
        .previewLayout(.fixed(width: 320, height: 640))
}

//
//  StartButtonView.swift
//  FruitNutrition
//
//  Created by Djordje Arandjelovic on 6.2.24..
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - BODY
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack (spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
        } //: BUTTON
        .accentColor(Color.white)
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(
            Capsule().strokeBorder(Color.white, lineWidth: 1.25)
        )
        
    }
}

//MARK: - PREVIEW
#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}

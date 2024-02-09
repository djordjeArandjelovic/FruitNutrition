//
//  SettingsLabelView.swift
//  FruitNutrition
//
//  Created by Djordje Arandjelovic on 9.2.24..
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//MARK: - PREVIEW
#Preview {
    SettingsLabelView(labelText: "Fruit Nutrition", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}

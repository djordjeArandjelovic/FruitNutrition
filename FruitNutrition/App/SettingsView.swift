//
//  SettingsView.swift
//  FruitNutrition
//
//  Created by Djordje Arandjelovic on 8.2.24..
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    Text("Test")
                }//: VSTACK
                .navigationTitle(Text("Settings"))
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        Button{
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                    }
                }
                .toolbarTitleDisplayMode(.large)
                .padding()
            }//: SCROLL
        }//: NAVIGATION
    }
}

//MARK: - PREVIEW
#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}

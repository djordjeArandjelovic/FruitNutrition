//
//  SettingsRowView.swift
//  FruitNutrition
//
//  Created by Djordje Arandjelovic on 9.2.24..
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name).foregroundStyle(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundStyle(Color.pink)
                }else {
                    EmptyView()
                }
            }
        }
    }
}

//MARK: - PREVIEW
#Preview {
    Group {
        SettingsRowView(name: "Developer", content: "Djordje Arandjelovic")
            .previewLayout(.sizeThatFits)
            .padding()
        SettingsRowView(name: "Website", linkLabel: "www.djorjde.com", linkDestination: "djordjearandjelovic.vercel.com")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
    
}

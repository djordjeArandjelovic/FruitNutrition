//
//  FruitNutritionApp.swift
//  FruitNutrition
//
//  Created by Djordje Arandjelovic on 5.2.24..
//

import SwiftUI

@main
struct FruitNutritionApp: App {
//    init() {
//            UserDefaults.standard.set(true, forKey: "isOnboarding")
//        }
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}

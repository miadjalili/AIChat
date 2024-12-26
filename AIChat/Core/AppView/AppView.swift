//
//  AppView.swift
//  AIChat
//
//  Created by Miad Jalili on 2024-12-23.
//

import SwiftUI

struct AppView: View {
    
    @AppStorage("showTabbarView")  var showTabBar: Bool = false
    
    var body: some View {
        AppViewBuilder(
            showTabBar: showTabBar,
            tabbarView: {
                ZStack {
                    Color.red.ignoresSafeArea()
                    Text("Tabbar")
                }
            },
            onboardingView: {
                ZStack {
                    Color.blue.ignoresSafeArea()
                    Text("OnBarding")
                }
            }
        )
     
        }
    }

#Preview("AppView - Tabbar") {
    AppView(showTabBar: true)
}

#Preview("AppView - Onboarding") {
    AppView(showTabBar: false)
}

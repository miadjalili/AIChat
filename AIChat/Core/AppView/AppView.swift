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
                TabBarView()
            },
            onboardingView: {
                WelcomeView()
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

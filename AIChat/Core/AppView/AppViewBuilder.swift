//
//  AppViewBuilder.swift
//  AIChat
//
//  Created by Miad Jalili on 2024-12-25.
//

import SwiftUI

struct AppViewBuilder<TabbarView: View , OnboardingView: View>: View {
    
    var showTabBar: Bool = false
    @ViewBuilder var tabbarView: TabbarView
    @ViewBuilder var onboardingView: OnboardingView
    
    var body: some View {
        ZStack {
            if showTabBar {
                tabbarView
                    .transition(.move(edge: .trailing))
            } else {
                onboardingView
                    .transition(.move(edge: .leading))
            }
        }
        .animation(.smooth, value: showTabBar)
    }
}
   fileprivate struct PreviewView:View {
    
    @State private var showTabBar: Bool = false
    
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
        .onTapGesture {
            showTabBar.toggle()
        }
    }
    
}
#Preview {
    PreviewView()
}

//
//  WelcomeView.swift
//  AIChat
//
//  Created by Miad Jalili on 2024-12-29.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to AIChat")
                    .frame(maxHeight: .infinity)
                NavigationLink {
                    OnboardingCompletedView()
                } label: {
                    Text("Get Started")
                        .callToActionButton()
                }

            }
            .padding(16)

        }
    }
}

#Preview {
    WelcomeView()
}

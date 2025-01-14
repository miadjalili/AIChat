//
//  OnboardingCompletedView.swift
//  AIChat
//
//  Created by Miad Jalili on 2025-01-02.
//

import SwiftUI

struct OnboardingCompletedView: View {
    
    @Environment(AppState.self) private var root
    
    @State private var isCompletingProfileSetup: Bool = false
    
    var selectedColor : Color = .orange
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Setup complete!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(selectedColor)
         
            Text("We've set up your profile and you're ready to start chatting")
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)

        }
        .frame(maxHeight: .infinity)
        .safeAreaInset(edge: .bottom, content: {
            ctaButton
        })
        .padding(24)
        .toolbar(.hidden, for: .navigationBar)
    }
    private var ctaButton: some View {
        Button {
            onFinishButtonPressed()
        } label: {
            ZStack {
                if isCompletingProfileSetup {
                    ProgressView()
                        .tint(.white)
                }else {
                    Text("Finish")
                }
            }
            .callToActionButton()
        }
        .disabled(isCompletingProfileSetup)
    }
    
    func onFinishButtonPressed() {
        isCompletingProfileSetup = true
        Task {
//            try await saveUserProfile(Color: selectedColor)
            try await Task.sleep(for: .seconds(3))
            isCompletingProfileSetup = false
            root.updateViewState(showTabBarView: true)
        }
       
    }
}


#Preview {
    OnboardingCompletedView(selectedColor: .mint)
        .environment(AppState())
}

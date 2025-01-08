//
//  WelcomeView.swift
//  AIChat
//
//  Created by Miad Jalili on 2024-12-29.
//

import SwiftUI

struct WelcomeView: View {
    
    @State var imageName: String = Constants.randomImageURL
    
    var body: some View {
        NavigationStack {
            VStack {
                ImageLoaderView(urlString: imageName)
                    .ignoresSafeArea(.all)
                
                titleSection
                    .padding(.top , 24)
                ctaButton
                    .padding(16)
                policyLinks
                
            }
            
            
        }
    }
    
    private var titleSection: some View {
        VStack(alignment: .center, spacing: 8) {
            Text ("AI Chat🤙🏻")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Create by Miad Jalili")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
    private var ctaButton: some View {
        VStack {
            
            NavigationLink {
                OnboardingIntroView()
            } label: {
                Text("Get Started")
                    .callToActionButton()
            }
            Text("Already have an account? Login")
                .underline()
                .font(.body)
                .padding(8)
                .tappableBackground()
                .onTapGesture {
                    
                }
        }
    }
    
    private var policyLinks: some View {
        HStack(spacing: 8) {
            
            Link(destination: URL(string: Constants.termsOfServiceURL)!, label: { Text("Terms of Service")})
            Circle()
                .fill(.accent)
                .frame(width: 4, height: 4)
            Link(destination: URL(string: Constants.privacyPolicyURL)!, label: { Text("Privacy Policy")})
        }
    }
    
}

#Preview {
    WelcomeView()
}

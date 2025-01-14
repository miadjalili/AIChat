//
//  OnboardingIntroView.swift
//  AIChat
//
//  Created by Miad Jalili on 2025-01-04.
//

import SwiftUI

struct OnboardingIntroView: View {
    var body: some View {
        VStack {
            Group {
                Text("Make your own ")
                +
                Text("avatars ")
                    .foregroundStyle(.accent)
                    .fontWeight(.semibold)
                +
                Text("and chat with them!\n\nHave ")
                +
                Text("real conversation ")
                    .foregroundStyle(.accent)
                    .fontWeight(.semibold)
                +
                Text("with AI generated responses! ")
                
            }
            .baselineOffset(6)
            .frame(maxHeight: .infinity)
            .padding(24)
            NavigationLink  {
                OnboardingColorView()
            } label: {
                Text("Continue")
                    .callToActionButton()
            }

        }
        .padding(24)
        .font(.title3)
        .toolbar(.hidden, for: .navigationBar)
      

    }
}

#Preview {
    NavigationStack {
        OnboardingIntroView()
    }
   
}
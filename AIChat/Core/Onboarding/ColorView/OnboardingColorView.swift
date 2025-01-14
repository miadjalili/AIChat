//
//  OnboardingColorView.swift
//  AIChat
//
//  Created by Miad Jalili on 2025-01-04.
//

import SwiftUI

struct OnboardingColorView: View {
    
    @State private var selectedColor: Color? 
    
    let profileColors: [Color] = [
        .red, .blue, .green, .yellow, .purple, .orange,
        .pink, .teal, .mint, .cyan, .indigo, .brown,
        Color(hue: 0.1, saturation: 0.7, brightness: 0.9), // Custom light orange
        Color(hue: 0.3, saturation: 0.6, brightness: 0.8), // Custom lime green
        Color(hue: 0.5, saturation: 0.5, brightness: 0.9) // Custom light blue
      // Custom greenish-yellow
   
    ]
    
    var body: some View {
        ScrollView {
            colorGrid
            .padding(.horizontal, 24)
        }
        .safeAreaInset(edge: .bottom, alignment: .center, spacing: 16, content: {
            ZStack {
                if let selectedColor {
                    ctaButton(selectedColor: selectedColor)
                    .transition(AnyTransition.move(edge: .bottom))
                }
            }
            .padding(24)
            .background(Color(uiColor: .systemBackground))
        })
        .animation(.bouncy, value: selectedColor)
        .toolbar(.hidden, for: .navigationBar)
        
    }
    private var colorGrid: some View {
        
        LazyVGrid(
            columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 3),
            alignment: .center,
            spacing: 16,
            pinnedViews: [.sectionHeaders],
            content: {
                Section {
                    ForEach(profileColors, id: \.self) { color in
                        Circle()
                            .fill(.accent)
                            .overlay(content: {
                                color
                                    .clipShape(Circle())
                                    .padding(selectedColor == color ? 10 : 0)
                            })
                            .onTapGesture {
                                selectedColor = color
                            }
                    }
                } header: {
                    Text("Select a profile color")
                        .font(.headline)
                }
                
            }
        )
    }
    
    private func ctaButton(selectedColor: Color) -> some View {
        NavigationLink {
            OnboardingCompletedView(selectedColor: selectedColor)
        } label: {
            Text("Continue")
                .callToActionButton()
        }
    }
}

#Preview {
    NavigationStack {
        OnboardingColorView()
    }
    .environment(AppState())
}

//
//  TabBarView.swift
//  AIChat
//
//  Created by Miad Jalili on 2024-12-25.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            ChatsView()
                .tabItem {
                    Label("Chats", systemImage: "bubble.left.and.bubble.right" )
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    TabBarView()
}

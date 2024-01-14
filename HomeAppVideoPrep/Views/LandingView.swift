//
//  LandingView.swift
//  HomeAppVideoPrep
//
//  Created by Russell Gordon on 2024-01-14.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        TabView {
            
            Group {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }

                Text("Automation")
                    .tabItem {
                        Image(systemName: "deskclock.fill")
                        Text("Automation")
                    }

                Text("Discover")
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("Discover")
                    }
            }
            // Make sure tab bar and toolbar background is always visible
            .toolbar(.visible, for: .tabBar, .navigationBar)
            // Set tab bar background color
            .toolbarBackground(Material.ultraThin, for: .tabBar, .navigationBar)

        }
    }
}

#Preview {
    LandingView()
        .preferredColorScheme(.dark)
}

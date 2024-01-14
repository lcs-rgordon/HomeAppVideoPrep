//
//  HomeView.swift
//  HomeAppVideoPrep
//
//  Created by Russell Gordon on 2024-01-14.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: Stored properties
    let firstGradient = Gradient(colors: [.gradientBlue, .gradientPurple, .gradientYellow])
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationStack {

            ZStack {
                
                LinearGradient(
                    gradient: firstGradient,
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
            }
            .navigationTitle("My Home")
            .toolbar {
                ToolbarItem {
                    Button(action: {}, label: {
                        Image(systemName: "waveform")
                            .foregroundStyle(.white)
                    })
                }
                ToolbarItem {
                    Button(action: {}, label: {
                        Image(systemName: "plus")
                            .foregroundStyle(.white)
                    })
                }
                ToolbarItem {
                    Button(action: {}, label: {
                        Image(systemName: "ellipsis.circle")
                            .foregroundStyle(.white)

                    })
                }
            }

        }
        
    }
}

#Preview {
    HomeView()
        .preferredColorScheme(.dark)
}

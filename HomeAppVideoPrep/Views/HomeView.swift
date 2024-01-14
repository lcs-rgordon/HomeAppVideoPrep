//
//  HomeView.swift
//  HomeAppVideoPrep
//
//  Created by Russell Gordon on 2024-01-14.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: Stored properties
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationStack {

            ZStack {

                // Background
                GradientView()
                
                // Main interface
                ScrollView {
                    
                    // Vertical stack of content (Categories, Favourites, Basement, et cetera)
                    VStack(spacing: 10) {
                        
                        // Categories
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            HStack {
                                CategoryView(
                                    category: "Climate",
                                    icon: "fan.fill",
                                    iconColor: .iconBlue,
                                    dataToShare: "16.5-18.0°"
                                )
                                
                                CategoryView(
                                    category: "Security",
                                    icon: "lock.fill",
                                    iconColor: .iconTeal,
                                    dataToShare: "No Alerts"
                                )
                                
                                CategoryView(
                                    category: "Speakers & TV",
                                    icon: "tv.and.hifispeaker.fill",
                                    iconColor: .gray,
                                    dataToShare: "None Playing"
                                )
                            }
                            .padding(.horizontal)
                            
                        }
                        .padding(.top, 10)

                        
                    }
                    
                }
                
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
    LandingView()
        .preferredColorScheme(.dark)
}

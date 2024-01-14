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
                        
                        // Favourites
                        SectionTitleView(title: "Favorites", navigation: false)
                        
                        Grid {
                            GridRow {
                                AccessoryView(
                                    room: "Garage",
                                    name: "Door",
                                    icon: "door.garage.closed",
                                    iconColor: .iconTeal,
                                    dataToShare: "Closed"
                                )
                                
                                ThermostatView(
                                    room: "Hallway",
                                    name: "Nest",
                                    currentTemperature: "17.0°",
                                    heatingToTemperature: "Heat to 12.0°",
                                    isOn: true
                                )
                            }
                            GridRow {
                                AccessoryView(
                                    room: "Living Room",
                                    name: "Front Door",
                                    icon: "lock.fill",
                                    iconColor: .iconTeal,
                                    dataToShare: "Locked"
                                )

                                AccessoryView(
                                    room: "Basement",
                                    name: "Side Door",
                                    icon: "lock.fill",
                                    iconColor: .iconTeal,
                                    dataToShare: "Locked"
                                )
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 15)

                        SectionTitleView(title: "Basement", navigation: true)
                        SectionTitleView(title: "Bathroom", navigation: true)
                        SectionTitleView(title: "Garage", navigation: true)
                        SectionTitleView(title: "Hallway", navigation: true)
                        SectionTitleView(title: "Living Room", navigation: true)
                        SectionTitleView(title: "Office", navigation: true)
                        
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

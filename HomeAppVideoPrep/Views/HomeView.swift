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
                                    icon: (on: "door.garage.open", off: "door.garage.closed"),
                                    iconColor: (on: .white, off: .iconTeal),
                                    dataToShare: (on: "Open", off: "Closed"),
                                    isOn: false,
                                    isInFavourites: true
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
                                    icon: (on: "lock.open", off: "lock.fill"),
                                    iconColor: (on: .white, off: .iconTeal),
                                    dataToShare: (on: "Unlocked", off: "Locked"),
                                    isOn: false,
                                    isInFavourites: true
                                )

                                AccessoryView(
                                    room: "Basement",
                                    name: "Side Door",
                                    icon: (on: "lock.open", off: "lock.fill"),
                                    iconColor: (on: .white, off: .iconTeal),
                                    dataToShare: (on: "Unlocked", off: "Locked"),
                                    isOn: false,
                                    isInFavourites: true
                                )
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 15)

                        // Basement
                        SectionTitleView(title: "Basement", navigation: true)
                        
                        Grid {
                            GridRow {
                                AccessoryView(
                                    room: "Basement",
                                    name: "Network",
                                    icon: (on: "poweroutlet.type.b.fill", off: "poweroutlet.type.b.fill"),
                                    iconColor: (on: .white, off: .iconTeal),
                                    dataToShare: (on: "On", off: "Off"),
                                    isOn: true,
                                    isInFavourites: false
                                )
                                
                                AccessoryView(
                                    room: "Basement",
                                    name: "Hub",
                                    icon: (on: "poweroutlet.type.b.fill", off: "poweroutlet.type.b.fill"),
                                    iconColor: (on: .white, off: .iconTeal),
                                    dataToShare: (on: "On", off: "Off"),
                                    isOn: true,
                                    isInFavourites: false
                                )
                                
                            }
                            
                            GridRow {
                                AccessoryView(
                                    room: "Basement",
                                    name: "Side Door",
                                    icon: (on: "lock.open", off: "lock.fill"),
                                    iconColor: (on: .white, off: .iconTeal),
                                    dataToShare: (on: "Unlocked", off: "Locked"),
                                    isOn: false,
                                    isInFavourites: false
                                )
                                
                                VStack {
                                    
                                    AccessoryView(
                                        room: "Basement",
                                        name: "Apple TV",
                                        icon: (on: "appletv.fill", off: "appletv.fill"),
                                        iconColor: (on: .white, off: .mediaDevice),
                                        dataToShare: (on: "Playing", off: "Not Playing"),
                                        isOn: false,
                                        isInFavourites: false
                                    )
                                    AccessoryView(
                                        room: "Basement",
                                        name: "HomePod",
                                        icon: (on: "homepodmini.fill", off: "homepodmini.fill"),
                                        iconColor: (on: .white, off: .mediaDevice),
                                        dataToShare: (on: "Playing", off: "Not Playing"),
                                        isOn: false,
                                        isInFavourites: false
                                    )
                                    
                                }
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 15)

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

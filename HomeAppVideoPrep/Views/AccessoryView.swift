//
//  AccessoryView.swift
//  HomeAppVideoPrep
//
//  Created by Russell Gordon on 2024-01-14.
//

import SwiftUI

struct AccessoryView: View {
    
    // MARK: Stored properties
    let room: String
    let name: String
    let icon: String
    let iconColor: Color
    let dataToShare: String
    
    // MARK: Computed properties
    var body: some View {
        
        HStack(spacing: 5) {
            
            Text("\(Image(systemName: icon))")
                .font(.title2)
                .foregroundStyle(iconColor)
                .padding(10)
                .background(
                    Circle()
                        .fill(.accessoryBlue)
                        .opacity(1.0)
                )
                .frame(width: 50)
            
            VStack(alignment: .leading, spacing: 0) {
                
                HStack {
                    Text(room)
                        .foregroundStyle(.accessoryText)
                        .lineLimit(1)
                        .truncationMode(.tail)
                    Spacer()
                }

                HStack {
                    Text(name)
                        .foregroundStyle(.white)
                        .bold()
                    Spacer()
                }
                
                Text(dataToShare)
                    .padding(.trailing, 10)
                    .foregroundStyle(.accessoryText)
                
            }
            .font(.subheadline)
            .fontWeight(.regular)
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 6)
        .background(.accessoryBlue.opacity(0.4))
        .cornerRadius(15.0)

    }
}

#Preview {
    LandingView()
        .preferredColorScheme(.dark)
}

#Preview {
    ZStack {
        
        GradientView()
        
        VStack {
            
            AccessoryView(
                room: "Garage",
                name: "Door",
                icon: "door.garage.closed",
                iconColor: .iconTeal,
                dataToShare: "Closed"
            )
            
            AccessoryView(
                room: "Basement",
                name: "Network",
                icon: "poweroutlet.type.b.fill",
                iconColor: .iconTeal,
                dataToShare: "Off"
            )
                        
        }
        .padding()
    }
    
}

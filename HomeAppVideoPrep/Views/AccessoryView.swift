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
    let icon: (on: String, off: String)
    let iconColor: (on: Color, off: Color)
    let dataToShare: (on: String, off: String)
    let isOn: Bool
    
    // MARK: Computed properties
    var body: some View {
        
        HStack(spacing: 5) {
            
            Text("\(Image(systemName: isOn ? icon.on : icon.off))")
                .font(.title2)
                .foregroundStyle(isOn ? iconColor.on : iconColor.off)
                .padding(10)
                .background(
                    Circle()
                        .fill(isOn ? .yellow : .accessoryBlue)
                        .opacity(1.0)
                )
                .frame(width: 50)
            
            VStack(alignment: .leading, spacing: 0) {
                
                HStack {
                    Text(room)
                        .foregroundStyle(isOn ? .accessoryTextOn : .accessoryText)
                        .lineLimit(1)
                        .truncationMode(.tail)
                    Spacer()
                }
                
                HStack {
                    Text(name)
                        .foregroundStyle(isOn ? .black : .white)
                        .bold()
                    Spacer()
                }
                
                Text(isOn ? dataToShare.on : dataToShare.off)
                    .padding(.trailing, 10)
                    .foregroundStyle(isOn ? .accessoryTextOn : .accessoryText)
                
            }
            .font(.subheadline)
            .fontWeight(.regular)
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 6)
        .background(isOn ? .white.opacity(0.9) : .accessoryBlue.opacity(0.4))
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
                icon: (on: "door.garage.open", off: "door.garage.closed"),
                iconColor: (on: .white, off: .iconTeal),
                dataToShare: (on: "Open", off: "Closed"),
                isOn: true
            )

            AccessoryView(
                room: "Garage",
                name: "Door",
                icon: (on: "door.garage.open", off: "door.garage.closed"),
                iconColor: (on: .white, off: .iconTeal),
                dataToShare: (on: "Open", off: "Closed"),
                isOn: false
            )

            AccessoryView(
                room: "Basement",
                name: "Network",
                icon: (on: "poweroutlet.type.b.fill", off: "poweroutlet.type.b.fill"),
                iconColor: (on: .white, off: .iconTeal),
                dataToShare: (on: "On", off: "Off"),
                isOn: true
            )
            
            AccessoryView(
                room: "Basement",
                name: "Network",
                icon: (on: "poweroutlet.type.b.fill", off: "poweroutlet.type.b.fill"),
                iconColor: (on: .white, off: .iconTeal),
                dataToShare: (on: "On", off: "Off"),
                isOn: false
            )

        }
        .padding()
    }
    
}

//
//  ThermostatView.swift
//  HomeAppVideoPrep
//
//  Created by Russell Gordon on 2024-01-14.
//

import SwiftUI

struct ThermostatView: View {
    
    // MARK: Stored properties
    let room: String
    let name: String
    let currentTemperature: String
    let heatingToTemperature: String
    let isOn: Bool
    
    // MARK: Computed properties
    var body: some View {
        HStack(spacing: 5) {
            
            Text(currentTemperature)
                .font(.headline)
                .foregroundStyle(isOn ? .black : .accessoryText)
                .padding(3)
                .frame(width: 50)

            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Text(room)
                        .foregroundColor(isOn ? .accessoryTextOn : .accessoryText)
                        .lineLimit(1)
                        .truncationMode(.tail)
                    Spacer()
                }
                Text(name)
                    .foregroundStyle(isOn ? .black : .white)
                    .bold()
                Text(heatingToTemperature)
                    .padding(.trailing, 10)
                    .foregroundColor(isOn ? .accessoryTextOn : .accessoryText)
                    .lineLimit(1)

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
            
            ThermostatView(
                room: "Hallway",
                name: "Nest",
                currentTemperature: "17.5°",
                heatingToTemperature: "Off",
                isOn: false
            )

            ThermostatView(
                room: "Hallway",
                name: "Nest",
                currentTemperature: "17.5°",
                heatingToTemperature: "Heat to 12.0°",
                isOn: true
            )
        }
        .padding()

        
    }
    .preferredColorScheme(.dark)
}


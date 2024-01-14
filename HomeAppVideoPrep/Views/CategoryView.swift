//
//  CategoryView.swift
//  HomeAppVideoPrep
//
//  Created by Russell Gordon on 2024-01-14.
//

import SwiftUI

struct CategoryView: View {
    
    // MARK: Stored properties
    let category: String
    let icon: String
    let dataToShare: String
    let accentColor: Color
    
    // MARK: Computed properties
    var body: some View {
        HStack {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(height: 18)
                .foregroundColor(accentColor)
                
            VStack(alignment: .leading, spacing: 0) {
                Text(category)
                    .foregroundStyle(.white)
                    .bold()
                Text(dataToShare)
                    .padding(.trailing, 10)
                    .foregroundColor(.secondary)
            }
            .font(.footnote)
        }
        .padding(.vertical, 6)
        .padding(.horizontal, 12)
        .background(.tileBlue.opacity(0.4))
        .cornerRadius(25.0)
    }
}

#Preview {
    LandingView()
        .preferredColorScheme(.dark)
}

#Preview {
    
    ZStack {
        
        GradientView()
        
        HStack {
            VStack {
                CategoryView(
                    category: "Climate",
                    icon: "fan.fill",
                    dataToShare: "16.0-20.5",
                    accentColor: .teal
                )
                .padding()
                
                Spacer()
            }
            
            Spacer()
        }
    }
    .preferredColorScheme(.dark)
    
}

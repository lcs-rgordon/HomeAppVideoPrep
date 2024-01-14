//
//  SectionTitleView.swift
//  HomeAppVideoPrep
//
//  Created by Russell Gordon on 2024-01-14.
//

import SwiftUI

struct SectionTitleView: View {
    
    let title: String
    let navigation: Bool
    
    var body: some View {
        HStack(spacing: 5) {
            Text(title)
                .font(.title3)
                .fontWeight(.medium)
                .foregroundStyle(.white)
            if navigation {
                Text("\(Image(systemName: "chevron.right"))")
                    .foregroundColor(.accentColor.opacity(0.5))
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
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
            SectionTitleView(title: "Favorites", navigation: false)
            SectionTitleView(title: "Basement", navigation: true)
        }
        .preferredColorScheme(.dark)

    }
}

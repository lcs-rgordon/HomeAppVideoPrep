//
//  GradientView.swift
//  HomeAppVideoPrep
//
//  Created by Russell Gordon on 2024-01-14.
//

import SwiftUI

struct GradientView: View {
    
    // MARK: Stored properties
    let firstGradient = Gradient(colors: [.gradientBlue, .gradientPurple, .gradientYellow])

    // MARK: Computed properties
    var body: some View {
        
        LinearGradient(
            gradient: firstGradient,
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()

    }
}

#Preview {
    GradientView()
}

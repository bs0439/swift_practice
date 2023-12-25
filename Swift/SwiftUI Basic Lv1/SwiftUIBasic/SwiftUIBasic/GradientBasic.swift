//
//  GradientBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/25/23.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // Linear Gradient 선형 그레디언트
            Text("Linear Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                                   startPoint: .topLeading,
                                   endPoint: .bottom)
                )
                .frame(width: 300, height: 200, alignment: .center)
            
            // Radial Gradient
            Text("Radial Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    RadialGradient(gradient: Gradient(colors: [Color.yellow, Color.purple]),
                                   center: .leading,
                                   startRadius: 5,
                                   endRadius: 300)
                )
                .frame(width: 300, height: 200, alignment: .center)
            
            // Angular Gradient
            Text("Radial Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    AngularGradient(gradient: Gradient(colors: [Color.blue, Color.green]),
                                    center: .topLeading,
                                    angle: .degrees(180 + 45))
                )
                .frame(width: 300, height: 200, alignment: .center)
            
        } //:VSTACK
    }
}

#Preview {
    GradientBasic()
}

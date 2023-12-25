//
//  ColorBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/25/23.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Basic Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.purple)
                .frame(width: 300, height: 100, alignment: .center)
            
            
            // Primary Color
            // 자동으로 다크모드 색 지원
            
            Text("Primary Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.secondary)
                .frame(width: 300, height: 100, alignment: .center)
            
            // UIColor
            // UIkit에서 사용되는 컬허
            Text("UI Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: 300, height: 100, alignment: .center)
            
            //Custom Color
            Text("Custom Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color("CustomColor"))
                .frame(width: 300, height: 100, alignment: .center)
            
        } //:VSTACK
    }
}

#Preview {
    ColorBasic()
//        .preferredColorScheme(.dark)
}

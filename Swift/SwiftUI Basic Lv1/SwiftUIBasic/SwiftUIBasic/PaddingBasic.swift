//
//  PaddingBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/27/23.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Placeholder")
                .background(.yellow)
                .padding(.all, 15)
                .padding(.leading, 20) // CSS 기준 padding
                .background(.blue)
                .padding(.bottom, 20) // CSS 기준 margin
            
            Divider()
            
            // 2.Padding 응용
            Text("Placeholder")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            
            Text("안녕하세요 헬로우 월드에 오신 여러분들을 환영합니다안녕하세요 헬로우 월드에 오신 여러분들을 환영합니다안녕하세요 헬로우 월드에 오신 여러분들을 환영합니다안녕하세요 헬로우 월드에 오신 여러분들을 환영합니다안녕하세요 헬로우 월드에 오신 여러분들을 환영합니다안녕하세요 헬로우 월드에 오신 여러분들을 환영합니다")
            
                
            
        } //:VSTACK 범위 밖에서 Padding 설정
        
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 10, x: 10.0, y: 10.0)
        )
        .padding()
    }
}

#Preview {
    PaddingBasic()
}

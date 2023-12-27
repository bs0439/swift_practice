//
//  SpacerBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/27/23.
//

import SwiftUI

struct SpacerBasic: View {
    var body: some View {
        // 1번 - Spacer 예시 도형
        HStack(spacing: 0) {
            Spacer(minLength: 0)
                .frame(height:10)
                .background(.orange)
            
            Rectangle()
                .frame(width: 50, height: 50, alignment: .center)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .frame(width: 50, height: 50, alignment: .center)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .frame(width: 50, height: 50, alignment: .center)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .frame(width: 50, height: 50, alignment: .center)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
        } //:HSTACK
        .background(.yellow)
    

    }
}

struct Preview2: View{
    var body: some View{
        VStack(spacing: 20) {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                
                Image(systemName: "gear")
                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            } //:HSTACK
            .padding(.horizontal, 40)
            
            Spacer()
            
        } //:VSTACK
    }
}

#Preview {
    SpacerBasic()
}

#Preview("Preview2") {
    Preview2()
}

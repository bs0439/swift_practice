//
//  ExtractSubView.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/30/23.
//

import SwiftUI

struct ExtractSubView: View {
    var body: some View {
        ZStack{
            Color.cyan
                .ignoresSafeArea()
            
            contentLayer
        }
        
        
    }
    
    var contentLayer: some View{
        HStack(spacing: 20) {
            itemBasic(title: "사과", count: 1, color: .red)
            itemBasic(title: "오렌지", count: 10, color: .orange)
            itemBasic(title: "바나나", count: 34, color: .yellow)
        } //:HSTACK
    }
    
    
    
    
}

#Preview {
    ExtractSubView()
}

//
//  ConditionalBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/30/23.
//

import SwiftUI

struct ConditionalBasic: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button {
                // Action
                isLoading.toggle()
            } label: {
                Text("로드 중... : \(isLoading.description)")
            }
            
            //로딩 이미지
            if isLoading{
                ProgressView()
            }
            
            //원형 버튼
            Button {
                // Action
                showCircle.toggle()
            } label: {
                Text("원형버튼 : \(showCircle.description)")
            }
            // 사각형 버튼
            
            Button {
                // Action
                showRectangle.toggle()
            } label: {
                Text("사각형 버튼 \(showRectangle.description)")
            }
            
            if showCircle{
                Circle()
                    .frame(width: 100, height: 100, alignment: .center)
                
            }
            
            if showRectangle{
                Rectangle()
                    .frame(width: 100, height: 100, alignment: .center)
                
            }
            
            //조건 3.  원형 버튼이 flase 그리고 사각형 버튼이 false일 때
            
            if !showCircle && !showRectangle{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 200, height: 100, alignment: .center)
            }
            
            //조건 4. 원형버튼 true 또는 사격형 버튼 true일 때
            
            if showCircle || showRectangle{
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.red)
                    .frame(width: 200, height: 100, alignment: .center)
            }
            
            
            Spacer()
            
            
        } //: VSTACK
    }
}

#Preview {
    ConditionalBasic()
}

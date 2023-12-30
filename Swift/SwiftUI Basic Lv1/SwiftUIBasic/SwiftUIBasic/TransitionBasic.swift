//
//  TransitionBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/30/23.
//

import SwiftUI

struct TransitionBasic: View {
    
    //property
    @State var showTransition: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button {
                    // Action
                    withAnimation(.easeInOut){
                        showTransition.toggle()
                    }
                } label: {
                    Text("Button")
                }
                Spacer()
            }
            
            if showTransition{
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showTransition ? 1.0 : 0)
                
                // 1번 move transition
//                    .transition(.move(edge: .bottom))
                // 2번 opacity transition
//                    .transition(.opacity)
                // 3번 scale
//                    .transition(.scale)
                // 4번 asymmetric trasition - 시작점 끝나는 지점을 custom으로 정해주기 때문에 비대칭 transition
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .trailing)))
            }
            
        }//: ZStack
        .ignoresSafeArea(edges: .bottom)
        
    }
}

#Preview {
    TransitionBasic()
}
 

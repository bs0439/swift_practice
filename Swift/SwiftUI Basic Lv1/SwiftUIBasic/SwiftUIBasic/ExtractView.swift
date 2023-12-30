//
//  ExtractView.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/30/23.
//

import SwiftUI

struct ExtractView: View {
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            
            //content
            contentLayer
        }
    }
    
    //content
    var contentLayer: some View{
        VStack(spacing: 20) {
            Text("Extract View 연습")
                .font(.largeTitle)
            
            Button {
                // Action
                buttonPressed()
            } label: {
                Text("바탕색 변경")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
            
        } //:VSTACK
    }
    
    func buttonPressed(){
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractView()
}

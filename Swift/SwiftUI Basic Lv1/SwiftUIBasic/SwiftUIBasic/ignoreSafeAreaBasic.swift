//
//  ignoreSafeAreaBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/29/23.
//

import SwiftUI

struct ignoreSafeAreaBasic: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            VStack{
                Text("Hello, World!")
                    .font(.title)
            }
        }
    }
}

struct ignore2: View{
    var body: some View{
        ScrollView {
            VStack(spacing: 20) {
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11){ index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay(
                            Text("\(index) 번 리스트")
                        )
                }
                
            } //:VSTACK
        }
        .background(
            .blue
        )
    }
}


#Preview {
    ignoreSafeAreaBasic()
}

#Preview("2"){
    ignore2()
}

//
//  ButtonBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/29/23.
//

import SwiftUI

struct ButtonBasic: View {
    
    @State var mainTitle: String = "아직 버튼 안눌림"
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button {
                // Action
                self.mainTitle = "리셋"
            } label: {
                Text("리셋버튼")
            }
            
            
            Text(mainTitle)
                .font(.title)
            
            Divider()
            
            
            Button {
                // Action
                self.mainTitle = "기본 버튼 눌림"
            } label: {
                Text("기본 버튼")
            }
            .accentColor(.red)
            
            
            Divider()
            
            Button {
                self.mainTitle = "저장 버튼 눌림"
                
            } label: {
                Text("저장")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding()
                    .padding(.horizontal, 20)
                    .foregroundStyle(.white)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .shadow(radius: 10)
                
            }
            
            Divider()
            
            Button {
                // Action
                self.mainTitle = "하트버튼 눌림"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.red)
                    )
            }
            
            Button {
                // Action
                self.mainTitle = "완료 버튼 눌림"
            } label: {
                Text("완료")
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 6)
                    )
                    
                    
            }
        } //:VSTACK
    }
}

#Preview {
    ButtonBasic()
}

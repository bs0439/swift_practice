//
//  StateBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/30/23.
//

import SwiftUI

struct StateBasic: View {
    // property
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "아직 버튼 안눌림"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            //content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("카운트 : \(count)")
                
                HStack(spacing: 20) {
                    Button {
                        // Action
                        backgroundColor = .red
                        myTitle = "1번 버튼 눌림"
                        count += 1
                    } label: {
                        Text("1번 버튼")
                    }
                    
                    Button {
                        // Action
                        backgroundColor = .purple
                        myTitle = "2번 버튼 눌림"
                        count -= 1
                    } label: {
                        Text("2번 버튼")
                    }
                } //:HSTACK
                
                Button {
                    // Action
                    backgroundColor = .green
                    myTitle = "아직 버튼 안눌림"
                    count = 0
                } label: {
                    Text("초기화 버튼")
                }
            } //:VSTACK
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBasic()
}

//
//  NavigationBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/30/23.
//

import SwiftUI

struct NavigationBasic: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
//        NavigationView(content: {
//            VStack {
//                NavigationLink {
//                    SecondNavigaionView()
//                } label: {
//                    Text("Second Navigation 이동")
//                        .foregroundStyle(.white)
//                        .font(.headline)
//                        .padding()
//                        .background(Color.blue)
//                        .cornerRadius(10)
//                }
//
//            }
//            // 상단 페이지 제목
//            .navigationTitle("페이지 제목")
//            // 상단 페이지 제목 스타일
//            // .automatic: 자동, inline - 상단에 작게, large : leading 쪽으로 크게
//            .navigationBarTitleDisplayMode(.automatic)
//            .toolbar(.hidden)
//            
////            .navigationbarleading
//            
//        })
        
        NavigationStack{
            
        }
    }
}

#Preview {
    NavigationBasic()
}

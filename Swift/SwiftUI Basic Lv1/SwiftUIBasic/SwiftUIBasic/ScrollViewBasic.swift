//
//  ScrollViewBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/27/23.
//

import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
        // 1번 - 세로 스크롤
//        ScrollView(.vertical, showsIndicators: true, content: {
//            VStack(content: {
//                ForEach(0..<50){ index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(height: 300)
//                        .overlay(
//                            Text("\(index) 번")
//                            .font(.title))
//                }
//            })
//        })
        
//        ScrollView(.horizontal, showsIndicators: true) {
//            HStack{
//                ForEach(0..<50){ index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 300, height: 300)
//                        .overlay(
//                            Text("\(index) 번")
//                                .font(.title))
//                }
//            }
//        }
        
        ScrollView{
            LazyVStack{
                ForEach(0..<10){ _ in
                    ScrollView(.horizontal) {
                        LazyHStack{
                            ForEach(0..<10){ _ in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150, alignment: .center)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBasic()
}

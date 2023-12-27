//
//  StackBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/27/23.
//

import SwiftUI

struct StackBasic: View {
    var body: some View {
//        VStack(alignment: .leading, spacing: 20) {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200, height: 200, alignment: .center)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100, height: 100)
//            
//            
//        }//:VSTACK
//        
//        HStack(spacing: 20) {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200, height: 200, alignment: .center)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100, height: 100)
//        } //:HSTACK
        
//        ZStack(alignment: .topLeading, content: {
//                        Rectangle()
//                            .fill(.red)
//                            .frame(width: 150, height: 150, alignment: .center)
//            
//                        Rectangle()
//                            .fill(.green)
//                            .frame(width: 130, height: 130, alignment: .center)
//            
//                        Rectangle()
//                            .fill(.orange)
//                            .frame(width: 100, height: 100)
//        })
        
//        ZStack(alignment: .top, content: {
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//            
//            VStack(alignment: .leading, spacing: 20) {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//                
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100, alignment: .center)
//                
//                HStack(alignment: .bottom, spacing: 20) {
//                    Rectangle()
//                        .fill(.purple)
//                        .frame(width: 50, height: 50, alignment: .center)
//                    
//                    Rectangle()
//                        .fill(.pink)
//                        .frame(width: 75, height: 75, alignment: .center)
//                    
//                    
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                } //:HSTACK
//                .background(.white)
//            } //:VSTACK
//            .background(.black)
//        }) //:ZSTACK
        
        VStack(spacing: 50) {
            // ZStack을 사용해서 원에 1을 표현
            
            ZStack{
                Circle()
                    .frame(width: 100, height: 100, alignment: .center)
                
                Text("1")
                    .font(.title)
                    .foregroundStyle(
                            .linearGradient(
                                colors: [.yellow, .blue],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
            }
            
            
            Text("1")
                .font(.title)
                .foregroundStyle(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100, alignment: .center)
                )
            
        } //:VSTACK
        
    }
}

#Preview {
    StackBasic()
}

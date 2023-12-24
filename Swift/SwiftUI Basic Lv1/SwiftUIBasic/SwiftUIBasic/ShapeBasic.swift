//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/25/23.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {

//            VStack (spacing: 20){
//                Text("원형")
//                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                Circle()
//    //                .fill(Color.blue)
//    //                .foregroundColor(.pink)
//    //                .stroke(Color.red, lineWidth: 20)
//    //                .stroke(Color.purple, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [30]))
//                    .trim(from: 0.2, to: 1.0)
//                    .stroke(Color.purple, lineWidth: 50)
//                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                    .padding()
//                
//                // Ellipse 타원형
//                Text("타원형")
//                    .font(.title)
//                Ellipse()
//                    .fill(Color.green)
//                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
//                
//                // 캡슐형
//                Text("타원형")
//                    .font(.title)
//                Capsule(style: .circular)
//                    .stroke(Color.blue, lineWidth: 30)
//                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
//                
//                
//            }
            VStack{
                Text("직사각형")
                    .font(.title)
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                
                Text("둥근직사각형")
                    .font(.title)
                RoundedRectangle(cornerRadius: 20)
                    .trim(from: 0.4, to: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 300, height: 200, alignment: .center)
            }
    

        
    }
}

#Preview {
    ShapeBasic()
}

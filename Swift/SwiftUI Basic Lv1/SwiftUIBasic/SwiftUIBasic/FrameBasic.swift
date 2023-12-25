//
//  FrameBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/25/23.
//

import SwiftUI

struct FrameBasic: View {
    var body: some View {
//        VStack(spacing: 20) {
//            Text("Hello, World")
//                .font(.title)
//                .background(Color.green)
//                .frame(width: 200, height: 200, alignment: .center)
//                .background(Color.red)
//            
//            Divider()
//            //2
//            Text("Hello, World")
//                .font(.title)
//                .background(Color.green)
//                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//                .background(Color.red)
//            
//        } //:VSTACK
        
        VStack(spacing: 20) {
            Text("Hello World")
                .font(.title)
                .background(Color.red)
                .frame(height: 100, alignment: .top)
                .background(Color.orange)
                .frame(width: 200)
                .background(Color.purple)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.pink)
                .frame(height: 400)
                .background(Color.green)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(Color.yellow)
            
        } //:VSTACK
    }
}

#Preview {
    FrameBasic()
}

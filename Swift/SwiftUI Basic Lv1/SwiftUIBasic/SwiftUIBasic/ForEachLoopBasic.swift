//
//  ForEachLoopBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/29/23.
//

import SwiftUI

struct ForEachLoopBasic: View {
    //변수 설정
    var data: [String] = ["Hi", "Hello", "Hey everyone"]
    var body: some View {
        VStack(spacing: 20) {
            ForEach(0..<10){ index in
                HStack(spacing: 20) {
                    Circle()
                        .frame(width: 20, height: 20, alignment: .center)
                    
                    Text("인덱스 번호는 \(index)")
                } //:HSTACK
            }
            
            Divider()
            
            ForEach(data, id: \.self){ item in
                Text(item)
            }
            
        } //:VSTACK
    }
}

#Preview {
    ForEachLoopBasic()
}

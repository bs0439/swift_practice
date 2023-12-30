//
//  itemBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/30/23.
//

import SwiftUI

struct itemBasic: View {
    //property
    let title: String
    let count: Int
    let color: Color
    
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
        
    }
}

#Preview {
    itemBasic(title: "사과", count: 1, color: .red)
        .previewLayout(.sizeThatFits)
}

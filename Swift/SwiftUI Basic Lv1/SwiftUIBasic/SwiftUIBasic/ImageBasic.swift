//
//  ImageBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/25/23.
//

import SwiftUI

struct ImageBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Image("manggom")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300, alignment: .center)
                .cornerRadius(150)
//                .background(.red)
//                .frame(maxWidth: .infinity, alignment: .trailing)
            
            Divider()
            
            Image("manggom")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300, alignment: .center)
                .clipShape(Circle())
        } //:VSTACK
        
    }
}

#Preview {
    ImageBasic()
}

//
//  IconBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/25/23.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.fill.badge.plus")
                .resizable()
            // rendermode 에서 original 로 하게 되면 실제 color 에서 multi color로 변경됨
            // 즉 고유 값 컬러로 변경되어서 color를 변경하더라도 변경되지 않는 컬러값이 됩니다.
                .renderingMode(.original)
                .scaledToFit()
                .foregroundColor(.red)
                .frame(width: 300, height: 300, alignment: .center)
            
        } //:VSTACK
    }
}

#Preview {
    IconBasic()
}

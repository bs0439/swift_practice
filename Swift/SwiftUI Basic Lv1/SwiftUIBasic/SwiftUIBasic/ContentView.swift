//
//  ContentView.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello World")
                .font(.title)
//                .fontWeight(.semibold)
                .bold()
                .underline(true, color: Color.red)
                .italic()
                .strikethrough(true, color: Color.green)
            
            // 이 방법으로 하게 되면 text 크기를 지정할 수 있습니다. font 12, 40 단점 고정식
            Text("Hello World2.".uppercased())
                .font(.system(size: 25, weight: .semibold, design: .serif))
            
            // multiline text alignment
            Text("멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다.")
                .multilineTextAlignment(.leading)
                .foregroundColor(.red)
        }
        
    }
}

#Preview {
    ContentView()
}

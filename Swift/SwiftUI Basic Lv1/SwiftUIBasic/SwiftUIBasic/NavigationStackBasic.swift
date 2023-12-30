//
//  NavigationStackBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/30/23.
//

import SwiftUI

struct NavigationStackBasic: View {
    
    @State var stack = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $stack) {
            NavigationLink("2번째 페이지 이동", value: 28)
                .navigationDestination(for: Int.self) { value in
                    VStack {
                        
                        NavigationLink("3번째 페이지 이동", value:  100)
                        
                        Text("나의 나이는 \(value)")
                        Button {
                            // Action
//                            stack.removeLast() // 이전 페이지로 이동
                            stack = .init() // 초기화면으로 바로 이동
                        } label: {
//                            Text("이전 페이지로 이동하기")
                            Text("초기화면으로 이동하기")
                                .bold()
                        }
                    } //: VSTACK
                }
        }
    }
}

#Preview {
    NavigationStackBasic()
}

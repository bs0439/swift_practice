//
//  ButtonSnippets.swift
//  CodeSnippetsSwiftUI
//
//  Created by 김범수 on 12/25/23.
//

import SwiftUI

struct ButtonSnippets: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                Button(" Button with Title") {
                    // Action
                    
                }
                Button(" Button with Style") {
                    // Action
                    
                }
                .buttonStyle(.borderedProminent)
                Button {
                    // Action
                    
                } label: {
                    Text("Button and Action and Label")
                }
                Button(action: {
                    
                }, label: {
                    Text("Button Full width")
                        .frame(maxWidth: .infinity)
                })
                .buttonStyle(.borderedProminent)
                .padding(.horizontal)
            } //:VSTACK
            .navigationTitle("Button Snippets")
        } //:NAVSTACK
    }
}

#Preview {
    ButtonSnippets()
}

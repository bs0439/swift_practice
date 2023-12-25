//
//  MyCustomSnippets.swift
//  CodeSnippetsSwiftUI
//
//  Created by 김범수 on 12/25/23.
//

import SwiftUI

struct MyCustomSnippets: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Button("Sample Button") {
                    // Action
                    
                }
                .buttonStyle(.borderedProminent)
                .frame(width: 200, height: 200)
                .padding()
                
                HStack(spacing: 20) {
                    Text("Hstack")
                }  //:HSTACK
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 150, height:150)
            } //:VSTACK
            .navigationTitle("Custom Snippets")
        } //:NAVSTACK
    }
}

#Preview {
    MyCustomSnippets()
}

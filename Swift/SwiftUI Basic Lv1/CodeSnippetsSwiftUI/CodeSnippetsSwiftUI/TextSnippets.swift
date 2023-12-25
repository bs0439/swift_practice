//
//  TextSnippets.swift
//  CodeSnippetsSwiftUI
//
//  Created by 김범수 on 12/25/23.
//

import SwiftUI

struct TextSnippets: View {
    
    @State private var text: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Text Default")
                
                Text("Placeholder")
                    .font(.largeTitle)
                
                Text("Placeholder")
                    .font(.title)
                
                Text("Text Font Custom")
                    .font(.custom("Gill Sans", size: 36))
                    .fontWeight(.bold)
                
                Text("Text MaxWidth")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .padding(.horizontal)
                
                Text("TExt MaxWidth")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .padding(.horizontal)
                
                TextField("TextField", text: $text)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
            } //:VSTACK
            .navigationTitle("Text Snippets")
        } //:NAVSTACK
    }
}

#Preview {
    TextSnippets()
}

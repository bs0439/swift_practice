//
//  FormSnippets.swift
//  CodeSnippetsSwiftUI
//
//  Created by 김범수 on 12/25/23.
//

import SwiftUI

struct FormSnippets: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Form {
                    Section {
                        // Content
                        Text("Placeholder")
                        
                    } header: {
                        Text("Header")
                        
                    } footer: {
                        Text("Footer")
                    } //:SECTION
                    
                    Section {
                        // Content
                        Text("Placeholder")
                        
                    } header: {
                        Text("Header")
                        
                    } footer: {
                        Text("Footer")
                    } //:SECTION
                } //:FORM
                
            } //:VSTACK
            .navigationTitle("Form Snippets")
            
        } //:NAVSTACK
    }
}

#Preview {
    FormSnippets()
}

//
//  NavStackVstackSnippets.swift
//  CodeSnippetsSwiftUI
//
//  Created by 김범수 on 12/25/23.
//

import SwiftUI

struct NavStackVstackSnippets: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
            } //:VSTACK
            
            VStack(spacing: 20) {
                Text("dkdk")
                
            } //:VSTACK
            
            VStack(spacing: 20) {
                Text("Vstack Spacer")
                
                Spacer()
                
            } //: VSTACK
            .navigationTitle("Navigaion with Title")
        } //:NAVSTACK
    }
}

struct NavStackToobar: View{
    var body: some View{
        NavigationStack {
            VStack(spacing: 20) {
                
            } //:VSTACK
            .toolbar {
                // Leading Icon
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        // Action
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
                
                // Trailing Icon
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        // Action
                        
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                
            } //:TOOLBAR
            .navigationTitle("Navigation")
        } //:NAVSTACK
    }
}

#Preview {
    NavStackVstackSnippets()
}

#Preview("NavStack Toolbar") {
    NavStackToobar()
}

//
//  ZstackSnippets.swift
//  CodeSnippetsSwiftUI
//
//  Created by 김범수 on 12/25/23.
//

import SwiftUI

struct ZstackSnippets: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Background Color
                Color.blue
                    .ignoresSafeArea()
                // Content
                
            } //:ZSTACK
            .navigationTitle("Zstack Backgrount")
        } //:NAVSTACK
    }
}

struct ZstackSnippetsGradient: View{
    var body: some View{
        NavigationStack {
//            ZStack {
//                LinearGradient(gradient: Gradient(colors: [Color.pink, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                    .ignoresSafeArea()
//                
//                // Content
//                
//            } //:ZSTACK
            ZStack {
                RadialGradient(gradient: Gradient(colors: [.white, .purple]), center: .bottom, startRadius: 10, endRadius: 620)
                    .ignoresSafeArea()
                
                // Content
                
            } //:ZSTACK
            .navigationTitle("ZStack Gradient")
        } //:NAVSTACK
    }
}

#Preview("Background Color") {
    ZstackSnippets()
}

#Preview("Gradient") {
    ZstackSnippetsGradient()
}

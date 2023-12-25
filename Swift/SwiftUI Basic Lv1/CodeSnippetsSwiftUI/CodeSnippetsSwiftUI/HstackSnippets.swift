//
//  HstackSnippets.swift
//  CodeSnippetsSwiftUI
//
//  Created by 김범수 on 12/25/23.
//

import SwiftUI

struct HstackSnippets: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                HStack(spacing: 20) {
                    Text("Hstack 1")
                    HStack(spacing: 20) {
                        Text("Hstack2")
                        Text("Hstack3")
                    } //:HSTACK
                } //:HSTACK
            } //:VSTACK
            .navigationTitle("Hstack Snippets")
        } //:NAVSTACK
    }
}

#Preview {
    HstackSnippets()
}

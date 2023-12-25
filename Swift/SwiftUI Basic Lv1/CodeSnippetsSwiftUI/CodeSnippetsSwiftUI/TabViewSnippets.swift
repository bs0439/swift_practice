//
//  TabViewSnippets.swift
//  CodeSnippetsSwiftUI
//
//  Created by 김범수 on 12/25/23.
//

import SwiftUI

struct TabViewSnippets: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                TabView {
                    Text("Screen One")
                        .tabItem {
                            Image(systemName: "star.fill")
                            Text("Screen One")
                        }
                    
                    Text("Screen Two")
                        .tabItem {
                            Image(systemName: "heart")
                            Text("Screen Two")
                        }
                } //:TABVIEW
            } //:VSTACK
            .navigationTitle("Tabview")
        } //:NAVSTACK
    }
}

#Preview {
    TabViewSnippets()
}

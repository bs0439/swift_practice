//
//  LazyGridBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/29/23.
//

import SwiftUI

struct LazyGridBasic: View {
    // LazyGrid
    // columns의 갯수를 3개로 설정
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    let title: [String] = Array(1...1000).map{"목록 \($0)"}
    
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80))
    ]
    
    var body: some View {
        
        ScrollView {
            
            // Hero 부분 (위에 사진 부분)
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]) {
                    // Section 1
                    Section(header: Text("Section1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 150)
                                .overlay(
                                    Text("\(index) 번")
                                )
                        }
                    } //: Section 1
                    
                    // Section 2
                    Section(header: Text("Section2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.red)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                                .overlay(
                                    Text("\(index) 번")
                                )
                        }
                    } //: Section 2
                }
        }
    }
}

struct LazyGridView2: View{
    
    let title: [String] = Array(1...1000).map{"목록 \($0)"}
    
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80))
    ]
    
    var body: some View{
        ScrollView(.horizontal){
            LazyHGrid(rows: layout, spacing: 20, content: {
                ForEach(title, id: \.self){ item in
                    VStack{
                        Capsule()
                            .fill(.yellow)
                        .frame(height: 30)
                        
                        Text(item)
                            .foregroundStyle(.blue)
                    }
                }
            })
        }
    }
}

#Preview {
    LazyGridBasic()
}

#Preview("LazyGridView2") {
    LazyGridView2()
}

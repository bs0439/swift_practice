//
//  SheetBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/30/23.
//

import SwiftUI

struct SheetBasic: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            
            
            Button {
                // Action
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding()
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
//            .sheet(isPresented: $showSheet){
//                SheetBasic2()
//            }
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SheetBasic2()
//            })
        }
    }
}

#Preview {
    SheetBasic()
}

//
//  SheetBasic2.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/30/23.
//

import SwiftUI

struct SheetBasic2: View {
    
    // @Binding
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.red.ignoresSafeArea()
            
            //
            Button {
                // Action
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            }
            .padding(.leading, 25)
        }
    }
}

#Preview {
    SheetBasic2()
}

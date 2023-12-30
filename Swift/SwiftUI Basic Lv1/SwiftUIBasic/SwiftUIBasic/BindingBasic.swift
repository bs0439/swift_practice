//
//  BindingBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/30/23.
//

import SwiftUI

struct BindingBasic: View {
  
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Binding Basic View"
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                
                // button
                // parameter로 @State의 값에 $ 붙여 줍니다.
                BidingChild(backgroundColor: $backgroundColor, title: $title)
            } //:VSTACK
            
        }
    }
}

#Preview {
    BindingBasic()
}

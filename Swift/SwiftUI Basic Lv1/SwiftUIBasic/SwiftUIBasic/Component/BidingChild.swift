//
//  BidingChild.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/30/23.
//

import SwiftUI

struct BidingChild: View {
    @State var ButtonColor: Color = Color.blue
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    var body: some View {
        Button {
            // Action
            backgroundColor = .orange
            ButtonColor = .pink
            title = "Biding Child View"
        } label: {
            Text("Child View 이동")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(ButtonColor)
                .cornerRadius(10)
        }
    }
}

#Preview {
    BidingChild(backgroundColor: .constant(Color.orange), title: .constant("BindingChild"))
        .previewLayout(.sizeThatFits)
}

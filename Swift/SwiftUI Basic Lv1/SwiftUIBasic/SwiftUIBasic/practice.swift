//
//  practice.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/29/23.
//

import SwiftUI

struct practice: View {
    var body: some View {
        
        VStack {
            HStack{
                Text("채팅")
                    .font(.headline)
                    .padding(.leading, 25)
                    .foregroundStyle(.white)
                Spacer()
                
                Image(systemName: "qrcode.viewfinder")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding(.leading, 20)
                
                Image(systemName: "bell")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                
                
            }

            
            Spacer()
            
            
        }
        .background(.black)
    }
}

#Preview {
    practice()
}

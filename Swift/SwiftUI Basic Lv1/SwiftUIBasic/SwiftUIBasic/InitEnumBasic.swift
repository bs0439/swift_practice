//
//  InitEnumBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/29/23.
//

import SwiftUI

struct InitEnumBasic: View {
    
    //변수 선언
    let backgroundcolor: Color
    let count: Int
    let title: String
    
    enum fruit{
        case apple
        case orange
    }
    
    init(count: Int, fruit: fruit){
        self.count = count
        
        if fruit == .apple{
            self.title = "사과"
            self.backgroundcolor = .red
        }else{
            self.title = "오렌지"
            self.backgroundcolor = .orange
        }
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
            
        } //:VSTACK
        .frame(width: 150, height: 150, alignment: .center)
        .background(backgroundcolor)
    }
}

#Preview {
    HStack{
        InitEnumBasic(count: 100, fruit: .apple)
        InitEnumBasic(count: 47, fruit: .orange)
    }
}

//
//  BackgroundOverlayBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/25/23.
//

import SwiftUI

struct BackgroundOverlayBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, World")
                .frame(width: 100, height: 100, alignment: .center)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.red, Color.blue]),
                                           startPoint: .leading,
                                           endPoint: .trailing
                            )
                        )
                )
                .frame(width: 120, height: 120, alignment: .center)
                .background(
                    Circle()
                        .fill(Color.red)
                )
            
            Divider()
            
            Circle()
                .fill(Color.pink)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(
                    Text("1")
                        .font(.title)
                        .foregroundColor(.white)
                )
                .background(
                    Circle()
                        .fill(.purple)
                        .frame(width: 120, height: 120, alignment: .center)
                )
            
            Divider()
            Rectangle()
                .frame(width: 200, height: 200, alignment: .center)
                .overlay(
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 100, height: 100)
                    ,alignment: .leading
                )
                .background(
                    Rectangle()
                        .fill(.red)
                        .frame(width: 250, height: 250, alignment: .center)
                )
                .padding()
            
            Divider()
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                           gradient: Gradient(colors: [Color.cyan, Color.blue]),
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing
                                          )
                        )
                        .frame(width: 100, height: 100, alignment: .center)
                        .shadow(color: .blue, radius: 10, x: 0, y: 10)
                        .overlay(
                            Circle()
                                .fill(.red)
                                .frame(width: 35, height: 35, alignment: .center)
                                .overlay(
                                    Text("2")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                )
                                .shadow(color: .red, radius: 10, x: 5, y: 5)
                            ,alignment: .bottomTrailing
                        )
                )
                .padding()
            
        } //:VSTACK
    }
}

#Preview {
    BackgroundOverlayBasic()
}

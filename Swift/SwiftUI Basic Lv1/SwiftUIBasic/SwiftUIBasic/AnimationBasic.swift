//
//  AnimationBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/30/23.
//

import SwiftUI

struct AnimationBasic: View {
    //property
    @State var isAnimated: Bool = false
    
    let timing: Double = 5.0
    
    
    var body: some View {
        
        
        VStack{
            Button {
                // Action
                withAnimation(
                    .default
//                        .repeatForever()
//                        .delay(1.0)
                
                ){
                    isAnimated.toggle()
                }
            } label: {
                Text("Button")
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 25.0 : 0)
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
    }
}

struct Animation2: View{
    
    @State var isAnimated: Bool = false
    let timing: Double = 1.0
    
    var body: some View{
        VStack(spacing: 20) {
            Button {
                // Action
                isAnimated.toggle()
            } label: {
                Text("Button")
            }
            
            //liner animation : 처음부터 끝까지 속도가 일정합니다.
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.linear(duration: timing), value: isAnimated)
            
            // easeIn animation : 처음에 느렸다가 끝에 빨라지는 효과
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimated)
            
            // easeOut 처음에는 빨랐다가 끝에 느려지는 효과입니다.
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimated)
            
            // easeInOut animation : 처음과 끝이 느려지고, 중간부분이 빨라지는 효과입니다.
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimated)
            
            
        } //:VSTACK
    }
}


struct Animation3: View{
    @State var isAnimated: Bool = false
    let timing: Double = 5.0
    var body: some View{
        VStack(spacing: 20) {
            Button {
                // Action
                //respinse : 단일 진동을 완료하는 데 걸리는 시간
                // damping: 얼마나 빠르게 스프링이 정지하는 속도제어 만약 0일때 영원히 멈추지 않음
                // blendDuration : 다른 애니메이션 간의 전환 길이 제어
                withAnimation(.spring(
                    response: 0.5,
                    dampingFraction: 0.5,  // 0 ~ 1.5
                    blendDuration: 0)){
                        isAnimated.toggle()
                    }
            } label: {
                Text("Button")
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100, alignment: .center)
        } //:VSTACK
    }
}


#Preview {
    AnimationBasic()
}

#Preview("Animation2"){
    Animation2()
}

#Preview("Animation3"){
    Animation3()
}

//
//  AlertBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 1/7/24.
//

import SwiftUI

struct AlertBasic: View {
    //Property
    
    @State var showAlert1: Bool = false
    @State var showAlert2: Bool = false
    @State var showAlert3: Bool = false
    @State var showAlert4: Bool = false
    
    @State var backgroundColor: Color = Color.yellow
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var alertType: AlertCase? = nil
    
    enum AlertCase {
        case success
        case error
    }
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button(action: {
                    showAlert1.toggle()
                }, label: {
                    Text("1번 Alert")
                })
                .alert(isPresented: $showAlert1, content: {
                    Alert(title: Text("패스워드 에러 입니다. 다시 확인하세요."))
                })
                
                Button(action: {
                    showAlert2.toggle()
                }, label: {
                    Text("2번 Alert")
                })
                .alert(isPresented: $showAlert2, content: {
                    getAlert2()
                })
                
                HStack(spacing: 10){
                    Button(action: {
                        alertTitle = "영상 업로드 에러"
                        alertMessage = "영상이 제대로 올라가지 않았습니다. 다시 확인해 주세요"
                        showAlert3.toggle()
                    }, label: {
                        Text("3번 Alert 실패시")
                    })
                    
                    Button(action: {
                        alertTitle = "영상 업로드 성공"
                        alertMessage = "영상이 제대로 올라갔습니다."
                        showAlert3.toggle()
                    }, label: {
                        Text("3번 Alert 성공시")
                    })
                }
                .alert(isPresented: $showAlert3, content: {
                    getAlert3()
                })
                
                //4
                
                HStack(spacing: 10){
                    Button(action: {
                        alertType = .error
                        alertTitle = "영상 업로드 에러"
                        alertMessage = "영상이 제대로 올라가지 않았습니다. 다시 확인해 주세요"
                        showAlert4.toggle()
                    }, label: {
                        Text("4번 Alert 실패시")
                    })
                    
                    Button(action: {
                        alertType = .success
                        alertTitle = "영상 업로드 성공"
                        alertMessage = "영상이 제대로 올라갔습니다."
                        showAlert4.toggle()
                    }, label: {
                        Text("4번 Alert 성공시")
                    })
                }
                .alert(isPresented: $showAlert4, content: {
                    getAlert4()
                })
            } //:VSTACK
        }
    }
    
    func getAlert2() -> Alert{
        return Alert(
            title: Text("메세지 삭제"),
            message: Text("정말 메세지 삭제 하시겠습니까?"),
            primaryButton: .destructive(Text("Delete"), action: {
                backgroundColor = .red
            }),
            secondaryButton: .cancel())
        
    }
    
    func getAlert3() -> Alert{
        return Alert(
            title: Text(alertTitle),
            message: Text(alertMessage),
            dismissButton: .default(Text("OK")))
    }
    
    func getAlert4() -> Alert{
        switch alertType {
        case .success:
            return Alert(
                title: Text("로그인에 성공했습니다."),
                dismissButton: .default(Text("OK"),
                                        action: {
                                            backgroundColor = Color.green
                                        })
            )
            
        case .error:
            return Alert(
                title: Text("에러발생 다시 확인하세요"),
                dismissButton: .default(Text("OK"),
                                        action: {
                                            backgroundColor = Color.red
                                        })
            )
        default: return Alert(title: Text("에러"))
        }}
}

#Preview {
    AlertBasic()
}

//
//  OnboardingView.swift
//  voiceMemo
//

import SwiftUI

struct OnboardingView: View {
    
    @StateObject private var onboardingViewModel = OnboardingViewModel()
    
  var body: some View {
    // TODO : - 화면 전환 구현 필요
      
      OnboardingContentView(onboardingViewModel: onboardingViewModel)
  }
}

// MARK: - 온보딩 컨텐츠 뷰
private struct OnboardingContentView: View {
    @ObservedObject private var onboardingViewModel: OnboardingViewModel
    
    fileprivate init(onboardingViewModel: OnboardingViewModel) {
        self.onboardingViewModel = onboardingViewModel
    }
    
    fileprivate var body: some View{
        VStack{
            // 온보딩 셀리스트 뷰
            Text("Onboarding123")
            // 시작 버튼 뷰
            
            
        }
    }
}

//MARK : - 온보딩 셀 리스트 뷰

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}

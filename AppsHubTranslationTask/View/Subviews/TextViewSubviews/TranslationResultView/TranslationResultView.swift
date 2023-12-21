//
//  TranslationResultView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 21.12.2023.
//

import SwiftUI

struct TranslationResultView: View {
    var baseLanguage: String
    var targetLanguage: String
    @State private var isLiked: Bool = false
    @State private var isOfflineModeOn: Bool = false
    var body: some View {
        NavigationView {
            VStack(spacing: 50) {
                
                //MARK: BASE LANG
                BaseLanguageView(baseLanguage: baseLanguage)
                
                //MARK: TARGET LANG
                
                TargetLanguageView(targetLanguage: targetLanguage)
                
                
                RateTranslationView(isLiked: $isLiked)
                
                OfflineModeView(isOfflineModeOn: $isOfflineModeOn, height: 48, fontSize: 14)
                
                
            }
            
        }
    }
}

#Preview {
    TranslationResultView(baseLanguage: "English", targetLanguage: "Spanish")
}

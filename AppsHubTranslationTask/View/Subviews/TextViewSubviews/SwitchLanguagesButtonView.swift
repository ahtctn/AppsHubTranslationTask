//
//  ChangeLanguagesButtonView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 20.12.2023.
//

import SwiftUI

struct SwitchLanguagesButtonView: View {
    @Binding var isReversed: Bool
    var baseViewModel: BaseLanguageViewModel
    var targetViewModel: TargetLanguageViewModel
    
    var body: some View {
        Button {
            print("Change languages button Tapped")
            swapSelectedLanguages()
            isReversed.toggle()
        } label: {
            Image("convertImage")
        }
    }
    
    private func swapSelectedLanguages() {
        let tempLanguage = baseViewModel.selectedLanguage
        baseViewModel.selectedLanguage = targetViewModel.selectedLanguage
        targetViewModel.selectedLanguage = tempLanguage
    }
}

#Preview {
    SwitchLanguagesButtonView(isReversed: .constant(false), baseViewModel: BaseLanguageViewModel(), targetViewModel: TargetLanguageViewModel())
}

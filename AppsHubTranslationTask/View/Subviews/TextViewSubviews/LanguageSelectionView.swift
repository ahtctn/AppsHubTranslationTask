//
//  LanguageSelectionView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 20.12.2023.
//

//import SwiftUI
//
//struct LanguageSelectionView: View {
//    @Binding var isReversed: Bool
//    @Binding var isTextNil: Bool
//    @ObservedObject var viewModel = LanguageViewModel()
//    
//    var body: some View {
//        HStack {
//            ChooseLanguageButtonView(languageName: isReversed ? viewModel.languages[1].name : viewModel.languages[2].name)
//            ChangeLanguagesButtonView(isReversed: $isReversed)
//            ChooseLanguageButtonView(languageName: isReversed ? viewModel.languages[2].name : viewModel.languages[1].name)
//        }
//    }
//}
//
//#Preview {
//    LanguageSelectionView(isReversed: .constant(false), isTextNil: .constant(false))
//}

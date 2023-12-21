//
//  TargetLanguageButtonView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 21.12.2023.
//

import SwiftUI

struct TargetLanguageButtonView: View {
    @State private var isShowLanguageListPresented: Bool = false
    var viewModel: TargetLanguageViewModel
    var focusedField: FocusState<Bool>.Binding
    @Binding var selectedLanguage: LanguageModel?
    
    var languageName: String {
        selectedLanguage?.name ?? "Spanish"
    }
    
    var body: some View {
        Button {
            isShowLanguageListPresented.toggle()
        } label: {
            ZStack {
                Rectangle()
                    .frame(width: focusedField.wrappedValue ? 107.51 : 141.51, height: 52, alignment: .center)
                    .cornerRadius(12)
                    .foregroundStyle(Color(Constants.Colors.languageButtonColor))
                
                Text(languageName)
            }
        }
        .sheet(isPresented: $isShowLanguageListPresented) {
            LanguageListView(languages: viewModel.languages, selectedLanguage: $selectedLanguage, isShowLanguageListPresented: $isShowLanguageListPresented)
        }
    }
}
//#Preview {
//    TargetLanguageButtonView()
//}

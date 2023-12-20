//
//  ChooseLanguageButtonView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 20.12.2023.
//

import SwiftUI

struct ChooseLanguageButtonView: View {
    @ObservedObject var keyboardObserver = KeyboardObserver()
    @State private var isShowLanguageListPresented: Bool = false
    @ObservedObject var viewModel = LanguageViewModel()
    
    var languageName: String
    var body: some View {
        Button {
            print("Language button tapped")
            isShowLanguageListPresented.toggle()
        } label: {
            ZStack {
                Rectangle()
                    .frame(width: keyboardObserver.isKeyboardVisible ? 107.51 : 141.51, height: 52, alignment: .center)
                    .cornerRadius(12)
                    .foregroundStyle(Color(Constants.Colors.languageButtonColor))
                
                Text(languageName)
            }
        }
        .sheet(isPresented: $isShowLanguageListPresented) {
            LanguageListView(languages: viewModel.languages)
        }
    }
}

#Preview {
    ChooseLanguageButtonView(languageName: "Spanish")
}

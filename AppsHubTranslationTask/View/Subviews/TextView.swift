//
//  TextView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 20.12.2023.
//

import SwiftUI

struct TextView: View {
    @State private var isFavoriteSentecesTapped: Bool = false
    @State private var isHistorySentecesTapped: Bool = false
    @State private var textFieldText: String = ""
    @State private var isReversed: Bool = false
    @State private var isOfflineModeOn: Bool = false
    @State private var isTextNil: Bool = true
    @ObservedObject var keyboardObserver = KeyboardObserver()
    @FocusState var focusedField: Bool
    
    @ObservedObject var viewModel = LanguageViewModel()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: focusedField ? 8: 24) {
                CustomTextFieldView(text: $textFieldText, isTextNil: $isTextNil, focusedField: $focusedField)
                HStack {
                    //LanguageSelectionView(isReversed: $isReversed, isTextNil: $isTextNil)
                    
                    HStack {
                        ChooseLanguageButtonView(languageName: isReversed ? viewModel.languages[1].name : viewModel.languages[2].name)
                        ChangeLanguagesButtonView(isReversed: $isReversed)
                        ChooseLanguageButtonView(languageName: isReversed ? viewModel.languages[2].name : viewModel.languages[1].name)
                        if focusedField {
                            TranslateButtonView(isTextNil: $isTextNil, focusedField: $focusedField)
                            
                        }
                        
                    }
                }
                
                if !focusedField {
                    OfflineModeView(isOfflineModeOn: $isOfflineModeOn)
                }
            }
            
            .navigationTitle("Translate iOS")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                if focusedField {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            focusedField = false
                        } label: {
                            HStack {
                                Image(systemName: "chevron.left")
                                    .foregroundStyle(.black)
                                Text("Back")
                                    .font(.custom("SFProText", size: 16))
                                    .foregroundStyle(.black)
                                    .fontWeight(.bold)
                            }
                        }
                        
                    }
                } else {
                    ToolbarItem(placement: .topBarLeading) {
                        NavHistoryButtonView(isHistorySentecesTapped: $isHistorySentecesTapped)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    NavHistoryButtonView(isHistorySentecesTapped: $isHistorySentecesTapped)
                }
            }
        }
    }
}

#Preview {
    TextView()
}

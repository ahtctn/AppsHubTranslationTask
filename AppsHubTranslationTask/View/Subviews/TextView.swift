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
    
    @FocusState var focusedField: Bool
    
    @ObservedObject var baseVM = BaseLanguageViewModel()
    @ObservedObject var targetVM = TargetLanguageViewModel()
    
    @State private var shouldNavigate = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: focusedField ? 8: 16) {
                CustomTextFieldView(text: $textFieldText, isTextNil: $isTextNil, focusedField: $focusedField)
                HStack(alignment: .center) {
                    BaseLanguageButtonView(viewModel: baseVM, focusedField: $focusedField, selectedLanguage: $baseVM.selectedLanguage)
                    SwitchLanguagesButtonView(isReversed: $isReversed, baseViewModel: baseVM, targetViewModel: targetVM)
                    TargetLanguageButtonView(viewModel: targetVM, focusedField: $focusedField, selectedLanguage: $targetVM.selectedLanguage)
                    
                    if focusedField {
                        NavigationLink(destination: TranslationResultView(baseLanguage: baseVM.selectedLanguage?.name ?? "English", targetLanguage: targetVM.selectedLanguage?.name ?? "Spanish"), isActive: $shouldNavigate) {
                            TranslateButtonView(isTextNil: $isTextNil, focusedField: $focusedField, shouldNavigate: $shouldNavigate)
                        }
                    }
                }
                
                if !focusedField {
                    OfflineModeView(isOfflineModeOn: $isOfflineModeOn, height: 60.01, fontSize: 16)
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

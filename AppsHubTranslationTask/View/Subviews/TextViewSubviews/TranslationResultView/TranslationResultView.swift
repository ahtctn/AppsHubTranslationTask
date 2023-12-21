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
    
    @Binding var textToTranslate: String
    @State private var isLiked: Bool = false
    @State private var isDisliked: Bool = false
    @State private var isOfflineModeOn: Bool = false
    @State private var isReversed: Bool = false
    
    @FocusState var focusedField: Bool
    
    @ObservedObject var baseVM = BaseLanguageViewModel()
    @ObservedObject var targetVM = TargetLanguageViewModel()
    
    @State private var showRateAlert: Bool = false
    @State private var isRateViewHidden: Bool = false
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var goToInitialScreen: Bool = false
    
    
    var body: some View {
        NavigationView {
            
            VStack(spacing: 16) {
                
                VStack(spacing: 45) {
                    //MARK: BASE LANG
                    BaseLanguageView(baseLanguage: baseLanguage, textToTranslate: $textToTranslate)
                        .padding(.top, -60)
                    
                    //MARK: TARGET LANG
                    TargetLanguageView(targetLanguage: targetLanguage)
                }
        
                NavigationLink(
                    destination: 
                        TextView()
                            .navigationBarBackButtonHidden(),
                    isActive: $goToInitialScreen
                ) {
                    EmptyView()
                }
                
                VStack {
                    RateTranslationView(isLiked: $isLiked, isDisliked: $isDisliked, showRateAlert: $showRateAlert)
                        .opacity(isRateViewHidden ? 0 : 1)
                        .disabled(isRateViewHidden)
                        .alert(isPresented: $showRateAlert) {
                            Alert(
                                title: Text("Thanks for your rating"),
                                message: nil,
                                dismissButton: .default(Text("Cancel")) {
                                    withAnimation {
                                        
                                        isRateViewHidden = true
                                    }
                                }
                            )
                        }
                    
                    OfflineModeView(isOfflineModeOn: $isOfflineModeOn, height: 48, fontSize: 14)
                    
                    //MARK: LANGUAGE SELECTION BUTTONS
                    HStack {
                        BaseLanguageButtonView(viewModel: baseVM, focusedField: $focusedField, selectedLanguage: $baseVM.selectedLanguage)
                        SwitchLanguagesButtonView(isReversed: $isReversed, baseViewModel: baseVM, targetViewModel: targetVM)
                        TargetLanguageButtonView(viewModel: targetVM, focusedField: $focusedField, selectedLanguage: $targetVM.selectedLanguage)
                    }
                    
                    //MARK: NEW TRANSLATION BUTTON
                    HStack {
                        Spacer()
                        Button {
                            print("New translation button tapped.")
                            //MARK: İŞLEMLERİ TAM OLARAK BURADA YAPMAMIZ GEREKİYOR.
                            goToInitialScreen = true
                            baseVM.reset()
                            targetVM.reset()
                        } label: {
                            HStack {
                                Image(systemName: "plus")
                                Text("New translation")
                                    .font(.custom("SFProText", size: 14))
                            }
                            .foregroundStyle(.white)
                            .background(
                                Rectangle()
                                    .frame(width: 159, height: 52, alignment: .center)
                                    .cornerRadius(7)
                            )
                        }
                        .padding(.trailing, 50)
                    }
                    .padding(.top, 20)
                    
                }
                .offset(y: isRateViewHidden ? -60 : 0)
            }
            
            .navigationBarItems(leading:
                HStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "chevron.left")
                                .foregroundStyle(.black)
                            Text("Home")
                                .font(.custom("SFProText", size: 16))
                                .fontWeight(.bold)
                                .foregroundStyle(.black)
                        }
                    }
                },
                trailing:
                HStack {
                    Button {
                        // İlgili işlemleri ekleyin
                    } label: {
                        Image(systemName: "clock.arrow.circlepath")
                            .foregroundStyle(.black)
                    }

                    Button {
                        print("Favorite sentences tapped")
                    } label: {
                        Image(systemName: "star")
                            .foregroundStyle(.black)
                    }
                }
            )
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    TranslationResultView(baseLanguage: "English", targetLanguage: "Spanish", textToTranslate: .constant("Hello"))
}

//
//  LanguageListView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 20.12.2023.
//

import SwiftUI

struct LanguageListView: View {
    var languages: [LanguageModel]
    var recentLanguages: [LanguageModel] = [
        LanguageModelList.mList[0],
        LanguageModelList.mList[1],
        LanguageModelList.mList[2],
    ]
    
    @Binding var selectedLanguage: LanguageModel?
    @Binding var isShowLanguageListPresented: Bool
    @ObservedObject var viewModel = BaseLanguageViewModel()
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    SearchLanguagesView(searchText: $searchText)
                    DetectLanguageView()
                    
                    Section("Recent Languages") {
                        ForEach(recentLanguages, id: \.name) { language in
                            Button {
                                selectedLanguage = language
                                isShowLanguageListPresented = false
                            } label: {
                                HStack {
                                    Text(language.name)
                                        .foregroundColor(selectedLanguage == language ? .blue : .black)
                                        .fontWeight(selectedLanguage == language ? .bold : .regular)
                                    
                                    Spacer()
                                    Image(systemName: language.isDownloaded ? "checkmark.circle.fill" : "arrow.down.to.line.compact")
                                        .foregroundStyle(selectedLanguage == language ? .blue : Color(Constants.Colors.secondaryColor))
                                    
                                }
                                .padding(.init(top: 10, leading: 8, bottom: 10, trailing: 8))
                            }
                        }
                        .listRowBackground(Color(Constants.Colors.listRowBackgroundColor))
                    }
                    
                    Section("All Languages") {
                        ForEach(languages, id: \.name) { language in
                            Button {
                                selectedLanguage = language
                                isShowLanguageListPresented = false
                            } label: {
                                HStack {
                                    Text(language.name)
                                        .foregroundColor(selectedLanguage == language ? .blue : .black)
                                        .fontWeight(selectedLanguage == language ? .bold : .regular)
                                    
                                    Spacer()
                                    Image(systemName: language.isDownloaded ? "checkmark.circle.fill" : "arrow.down.to.line.compact")
                                        .foregroundStyle(selectedLanguage == language ? .blue : Color(Constants.Colors.secondaryColor))
                                    
                                }
                                .padding(.init(top: 10, leading: 8, bottom: 10, trailing: 8))
                            }
                        }
                        .listRowBackground(Color(Constants.Colors.listRowBackgroundColor))
                    }
                }
                
                .background(.white)
                .scrollContentBackground(.hidden)
                
            }
            .onDisappear {
                //viewModel.selectedLanguage = selectedLanguage
                viewModel.updateSelectedLanguage(selectedLanguage)
            }
            .toolbar {
                Button {
                    
                } label: {
                    Image("cancelButton")
                }
            }
            .navigationTitle("Translate from")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    LanguageListView(languages: LanguageModelList.mList, selectedLanguage: .constant(LanguageModelList.mList[0]), isShowLanguageListPresented: .constant(true))
}

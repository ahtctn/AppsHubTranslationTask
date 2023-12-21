//
//  LanguageViewModel.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 20.12.2023.
//

import Foundation

class BaseLanguageViewModel: ObservableObject {
    @Published var selectedLanguage: LanguageModel?
    
    let languages: [LanguageModel] = [
        LanguageModel(name: "Afrikaans", isDownloaded: true),
        LanguageModel(name: "Albanian", isDownloaded: false),
        LanguageModel(name: "Amharic", isDownloaded: true),
        LanguageModel(name: "Arabic", isDownloaded: false),
        LanguageModel(name: "Armenian", isDownloaded: true),
        LanguageModel(name: "Assamese", isDownloaded: false),
        LanguageModel(name: "Aymara", isDownloaded: true),
        LanguageModel(name: "Azerbaijani", isDownloaded: false),
        LanguageModel(name: "Bambara", isDownloaded: true),
        LanguageModel(name: "Basque", isDownloaded: false),
        LanguageModel(name: "Belarusian", isDownloaded: true),
        LanguageModel(name: "Bengali", isDownloaded: false),
        LanguageModel(name: "Bhojpuri", isDownloaded: true),
        LanguageModel(name: "Bosnian", isDownloaded: false),
        LanguageModel(name: "Bulgarian", isDownloaded: true),
        LanguageModel(name: "Catalan", isDownloaded: false),
        LanguageModel(name: "Cebuano", isDownloaded: true),
        LanguageModel(name: "Chinese (Simplified)", isDownloaded: false),
        LanguageModel(name: "Chinese (Traditional)", isDownloaded: true),
        LanguageModel(name: "Corsican", isDownloaded: false),
        LanguageModel(name: "Croatian", isDownloaded: true),
        LanguageModel(name: "Czech", isDownloaded: false),
        LanguageModel(name: "Danish", isDownloaded: true),
        LanguageModel(name: "Dhivehi", isDownloaded: false),
        LanguageModel(name: "Dogri", isDownloaded: true),
        LanguageModel(name: "Dutch", isDownloaded: false),
        LanguageModel(name: "English", isDownloaded: true),
        LanguageModel(name: "Esperanto", isDownloaded: false),
        LanguageModel(name: "Estonian", isDownloaded: true),
        LanguageModel(name: "Ewe", isDownloaded: false),
        LanguageModel(name: "Filipino (Tagalog)", isDownloaded: true),
        LanguageModel(name: "Finnish", isDownloaded: false),
        LanguageModel(name: "French", isDownloaded: true),
        LanguageModel(name: "Galician", isDownloaded: true),
        LanguageModel(name: "Georgian", isDownloaded: false),
        LanguageModel(name: "German", isDownloaded: true),
        LanguageModel(name: "Greek", isDownloaded: false),
        LanguageModel(name: "Guarani", isDownloaded: true),
        LanguageModel(name: "Kazakh", isDownloaded: false),
        LanguageModel(name: "Khmer", isDownloaded: true),
        LanguageModel(name: "Kinyarwanda", isDownloaded: false),
        LanguageModel(name: "Konkani", isDownloaded: true),
        LanguageModel(name: "Luganda", isDownloaded: true),
        LanguageModel(name: "Luxembourgish", isDownloaded: false),
        LanguageModel(name: "Macedonian", isDownloaded: true),
        LanguageModel(name: "Maithili", isDownloaded: false),
        LanguageModel(name: "Malagasy", isDownloaded: true),
        LanguageModel(name: "Polish", isDownloaded: true),
        LanguageModel(name: "Portuguese (Portugal, Brazil)", isDownloaded: false),
        LanguageModel(name: "Punjabi", isDownloaded: true),
        LanguageModel(name: "Quechua", isDownloaded: false),
        LanguageModel(name: "Romanian", isDownloaded: true),
        LanguageModel(name: "Russian", isDownloaded: false),
        LanguageModel(name: "Samoan", isDownloaded: true),
        LanguageModel(name: "Spanish", isDownloaded: true),
        LanguageModel(name: "Sundanese", isDownloaded: false),
        LanguageModel(name: "Swahili", isDownloaded: true),
        LanguageModel(name: "Swedish", isDownloaded: false),
        LanguageModel(name: "Tsonga", isDownloaded: true),
        LanguageModel(name: "Turkish", isDownloaded: false),
        LanguageModel(name: "Turkmen", isDownloaded: true),
        LanguageModel(name: "Twi (Akan)", isDownloaded: false),
        LanguageModel(name: "Ukrainian", isDownloaded: true),
        LanguageModel(name: "Urdu", isDownloaded: false),
        LanguageModel(name: "Uyghur", isDownloaded: true),
    ]
    
    func updateSelectedLanguage(_ language: LanguageModel?) {
        selectedLanguage = language
    }
    
    func reset() {
        selectedLanguage = languages[25]
    }
}





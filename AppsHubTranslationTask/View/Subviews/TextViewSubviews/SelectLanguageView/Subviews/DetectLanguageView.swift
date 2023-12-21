//
//  DetectLanguageView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 21.12.2023.
//

import SwiftUI

struct DetectLanguageView: View {
    var body: some View {
        Section {
            HStack {
                Text("Detect Language")
                
                Spacer()
                Image(systemName: "sparkles")
                    .foregroundStyle(Color(Constants.Colors.secondaryColor))
            }
            .listRowBackground(Color(Constants.Colors.listRowBackgroundColor))
        }
    }
}

#Preview {
    DetectLanguageView()
}

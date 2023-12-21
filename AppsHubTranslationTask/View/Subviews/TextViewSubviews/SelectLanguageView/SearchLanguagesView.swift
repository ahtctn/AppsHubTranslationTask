//
//  SearchLanguagesView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 21.12.2023.
//

import SwiftUI

struct SearchLanguagesView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        Section {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(Color(Constants.Colors.secondaryColor))
                TextField("Search Languages", text: $searchText)
            }
            .listRowBackground(Color(Constants.Colors.listRowBackgroundColor))
        }
    }
}

#Preview {
    SearchLanguagesView(searchText: .constant("Deneme"))
}

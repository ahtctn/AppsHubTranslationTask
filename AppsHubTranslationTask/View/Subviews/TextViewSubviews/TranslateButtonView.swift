//
//  TranslateButtonView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 20.12.2023.
//

import SwiftUI

struct TranslateButtonView: View {
    @Binding var isTextNil: Bool
    var focusedField: FocusState<Bool>.Binding
    @Binding var shouldNavigate: Bool
    
    var body: some View {
        Button {
            //focusedField.wrappedValue = false
            shouldNavigate = true
        } label: {
            ZStack(alignment: .center) {
                Circle()
                    .frame(width: 52, height: 52, alignment: .center)
                    .foregroundStyle(isTextNil ? Color(Constants.Colors.textFieldBackgroundColor) : Color(Constants.Colors.blueColor))
                Image(systemName: "arrow.forward")
                    .foregroundStyle(isTextNil ? Color(Constants.Colors.blueColor) : .white)
            }
        }
    }
}

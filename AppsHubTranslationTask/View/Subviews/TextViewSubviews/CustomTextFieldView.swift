//
//  CustomTextFieldView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 20.12.2023.
//

import SwiftUI
import Combine

struct CustomTextFieldView: View {
    @Binding var text: String
    @Binding var isTextNil: Bool
    var focusedField: FocusState<Bool>.Binding

    
    var body: some View {
        //MARK: textfield iki tarafta eşit değil. onları eşitle.
        NavigationView {
            ZStack(alignment: .topLeading) {
                Rectangle()
                    .frame(width: 335, height: focusedField.wrappedValue ? 280 : 396)
                    .foregroundColor(Color(Constants.Colors.textFieldBackgroundColor))
                    .cornerRadius(16)
                    .padding()
                
                TextField("Enter text here...", text: $text, axis: .vertical)
                    .font(.custom("SFProText", size: 24))
                    .fontWeight(.bold)
                    .frame(width: 335, height: focusedField.wrappedValue ? 280 : 396, alignment: .topLeading)
                    .padding(.all, 24)
                    .focused(focusedField, equals: true)

            }
            .onAppear {
                isTextNil = text.isEmpty
            }
            .onChange(of: text) { newValue, _ in
                // Handle text changes
                isTextNil = newValue.isEmpty
        }
      }
    }
}




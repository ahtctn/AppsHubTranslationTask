//
//  KeyboardObserver.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 20.12.2023.
//

import Foundation
import UIKit

class KeyboardObserver: ObservableObject {
    @Published var isKeyboardVisible = false
    
    init() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc private func keyboardWillShow(notification: Notification) {
        isKeyboardVisible = true
    }
    
    @objc private func keyboardWillHide(notification: Notification) {
        isKeyboardVisible = false
    }
}

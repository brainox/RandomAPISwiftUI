//
//  UIApplication+Extension.swift
//  RandomAPISwiftUI
//
//  Created by Obinna Aguwa on 01/10/2022.
//

import UIKit
extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

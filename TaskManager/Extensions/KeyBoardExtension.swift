//
//  KeyBoardExtension.swift
//  TaskManager
//
//  Created by Olga Pavluchenko on 18.08.22.
//

import Foundation
import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif


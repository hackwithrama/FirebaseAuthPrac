//
//  CapsuleButtonStyle.swift
//  FirebaseAuthPrac
//
//  Created by Ramachandran Varadaraju on 08/10/24.
//

import Foundation
import SwiftUI

struct CapsuleButtonStyle: ButtonStyle {
    var bgColor: Color
    var textColor: Color
    var hasBorder: Bool = false
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(textColor)
            .padding()
            .frame(maxWidth: .infinity)
            .background(bgColor)
            .clipShape(.capsule)
            .overlay(
                hasBorder ? Capsule().stroke(.gray, lineWidth: 1) : nil
            )
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}


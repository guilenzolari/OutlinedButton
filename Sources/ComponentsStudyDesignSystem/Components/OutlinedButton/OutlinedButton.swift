//
//  OutlinedButton.swift
//  ComponentsStudyDesignSystem
//
//  Created by Guilherme Ferreira Lenzolari on 17/03/25.
//

import SwiftUI

@available(iOS 15.0, *)
public struct OutlinedButton: View {
    let label: String
    let iconLeading: String?
    let iconTrailing: String?
    let size: ButtonSize
    let color: ButtonColor
    var state: ButtonState
    var fillMode: Bool = false
    let action: () -> Void
    
    public var body: some View {
        Button(action: action) {
            ButtonContent(state: state,
                          color: color,
                          iconLeading: iconLeading,
                          iconTrailing: iconTrailing,
                          size: size,
                          label: label,
                          fillMode: fillMode)
        }.padding(.vertical, size.spacing.verticalSpacing)
            .foregroundStyle(Color(color.color(for: state)))
            .disabled(state != .enabled)
            .overlay(
                RoundedRectangle(cornerRadius: size.cornerRadius)
                    .stroke(Color(color.color(for: state)), lineWidth: size.borderThickness)
            )
    }
}

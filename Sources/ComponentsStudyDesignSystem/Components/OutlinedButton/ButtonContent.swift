//
//  ButtonContent.swift
//  ComponentsStudyDesignSystem
//
//  Created by Guilherme Ferreira Lenzolari on 17/03/25.
//

import SwiftUI

@available(iOS 15.0.0, *)
struct ButtonContent: View {
    var state: ButtonState
    var color: ButtonColor
    var iconLeading: String?
    var iconTrailing: String?
    var size: ButtonSize
    var label: String
    var fillMode: Bool
    
    var body: some View {
        ZStack {
            if state == .loading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
                    .tint(Color(color.color(for: state)))
            }
            
            button(iconLeading: iconLeading,
                   iconTrailing: iconTrailing,
                   size: size,
                   label: label,
                   fillMode: fillMode)
                .opacity(state == .loading ? 0 : 1)
        }
    }
}

@available(iOS 15.0.0, *)
extension ButtonContent {
    private func buttonIconLeading(icon: String, size: ButtonSize, label: String, fillMode: Bool) -> some View {
        HStack {
            Image(systemName: icon)
                .padding(.leading, size.spacing.iconSidePadding)
                .padding(.trailing, fillMode ? 0 : size.spacing.spacingLabelIcon)
                .font(.system(size: size.labelSize))
            
            if fillMode {
                Spacer()
            }
            
            Text(label)
                .font(.system(size: size.labelSize))
                .cornerRadius(size.cornerRadius)
                .padding(.trailing, size.spacing.labelSidePadding)
        }
    }
    
    private func buttonIconTrailing(iconName: String, size: ButtonSize, label: String, fillMode: Bool) -> some View {
        HStack {
            Text(label)
                .font(.system(size: size.labelSize))
                .cornerRadius(size.cornerRadius)
                .padding(.leading, size.spacing.labelSidePadding)
            
            if fillMode {
                Spacer()
            }
            
            Image(systemName: iconName)
                .padding(.leading, fillMode ? 0 : size.spacing.spacingLabelIcon)
                .padding(.trailing, size.spacing.iconSidePadding)
                .font(.system(size: size.labelSize))
        }
    }
    
    private func buttonWithoutIcon(size: ButtonSize, label: String, fillMode: Bool) -> some View {
        HStack {
            if fillMode {
                Spacer()}
            Text(label)
                .font(.system(size: size.labelSize))
                .cornerRadius(size.cornerRadius)
                .padding(.horizontal, size.spacing.labelSidePadding)
                .font(.system(size: size.labelSize))
            if fillMode {
                Spacer()}
        }
    }
    
    @ViewBuilder func button(iconLeading: String?, iconTrailing: String?, size: ButtonSize, label: String, fillMode: Bool) -> some View {
        if let leadingIcon = iconLeading {
            buttonIconLeading(icon: leadingIcon, size: size, label: label, fillMode: fillMode)
        } else if let trailingIcon = iconTrailing {
            buttonIconTrailing(iconName: trailingIcon, size: size, label: label, fillMode: fillMode)
        } else {
            buttonWithoutIcon(size: size, label: label, fillMode: fillMode)
        }
    }
}

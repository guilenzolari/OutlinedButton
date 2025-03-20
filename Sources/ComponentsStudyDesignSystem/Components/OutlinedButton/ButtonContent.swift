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
    var iconName: String?
    var size: ButtonSize
    var label: String
    var iconPosition: ButtonIconPosition
    var fillMode: Bool
    
    var body: some View {
        ZStack {
            if state == .loading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
                    .tint(Color(color.color(for: state)))
            }
            
            button(iconName: iconName, size: size, label: label, iconPosition: iconPosition, fillMode: fillMode)
                .opacity(state == .loading ? 0 : 1)
        }
    }
}

@available(iOS 15.0.0, *)
extension ButtonContent {
    private func buttonIconLeading(iconName: String, size: ButtonSize, label: String, fillMode: Bool) -> some View {
        HStack {
            Image(systemName: iconName)
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
    
    @ViewBuilder func button(iconName: String?, size: ButtonSize, label: String, iconPosition: ButtonIconPosition, fillMode: Bool) -> some View {
        if let icon = iconName {
            switch iconPosition {
            case .leading:
                buttonIconLeading(iconName: icon, size: size, label: label, fillMode: fillMode)
            case .trailing:
                buttonIconTrailing(iconName: icon, size: size, label: label, fillMode: fillMode)
            }
        } else {
            buttonWithoutIcon(size: size, label: label, fillMode: fillMode)
        }
    }
}

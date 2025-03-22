//
//  ButtonEnums.swift
//  ComponentsStudyDesignSystem
//
//  Created by Guilherme Ferreira Lenzolari on 17/03/25.
//

import SwiftUI

struct ButtonSpacing {
    let labelSidePadding: CGFloat
    let spacingLabelIcon: CGFloat
    let iconSidePadding: CGFloat?
    let verticalSpacing: CGFloat
}

enum ButtonSize {
    case large, medium, small, extrasmall, XXS
    
    var cornerRadius: CGFloat {
        switch self {
        case .large:
            return CornerRadius.cornerRadiusSm
        case .medium:
            return CornerRadius.cornerRadiusXs
        case .small:
            return CornerRadius.cornerRadiusXxs
        case .extrasmall:
            return CornerRadius.cornerRadiusXxs
        case .XXS:
            return CornerRadius.cornerRadiusXxs
        }
    }
    
    var borderThickness: CGFloat {
        switch self {
        case .large:
            return BorderThickness.borderThicknessLg
        case .medium:
            return BorderThickness.borderThicknessMd
        case .small:
            return BorderThickness.borderThicknessSm
        case .extrasmall:
            return BorderThickness.borderThicknessXs
        case .XXS:
            return BorderThickness.borderThicknessXxs
        }
    }
    
    var labelSize: CGFloat {
        switch self {
        case .large:
            return FontSize.fontSizeXl
        case .medium:
            return FontSize.fontSizeMd2
        case .small:
            return FontSize.fontSizeSmall
        case .extrasmall:
            return FontSize.fontSizeXs
        case .XXS:
            return FontSize.fontSizeXxs
        }
    }
    
    var iconSize: CGFloat {
        switch self {
        case .large:
            return FontSize.fontSizeXl
        case .medium:
            return FontSize.fontSizeMd2
        case .small:
            return FontSize.fontSizeSmall
        case .extrasmall:
            return FontSize.fontSizeXs
        case .XXS:
            return FontSize.fontSizeXxs
        }
    }
    
    var spacing: ButtonSpacing {
        switch self {
        case .large:
            return ButtonSpacing(labelSidePadding: 32, spacingLabelIcon: 16, iconSidePadding: 24, verticalSpacing: 24)
        case .medium:
            return ButtonSpacing(labelSidePadding: 24, spacingLabelIcon: 8, iconSidePadding: 16, verticalSpacing: 20)
        case .small:
            return ButtonSpacing(labelSidePadding: 16, spacingLabelIcon: 8, iconSidePadding: 12, verticalSpacing: 14)
        case .extrasmall, .XXS:
            return ButtonSpacing(labelSidePadding: 12, spacingLabelIcon: 8, iconSidePadding: 8, verticalSpacing: 4)
        }
    }
}

enum ButtonState {
    case enabled, disabled, loading
}

enum ButtonIconPosition {
    case leading, trailing
}

enum ButtonColor {
    case white, blue, disabled
    
    func color(for state: ButtonState) -> UIColor {
        switch (self, state) {
        case (.white, .enabled), (.white, .loading):
            return UIColor.colorBrandPrimary100
        case (.blue, .enabled), (.blue, .loading):
            return UIColor.colorBrandPrimary48
        case (.blue, .disabled):
            return UIColor.colorNeutral69
        case (.white, .disabled):
            return UIColor.colorNeutral47
        default:
            return UIColor.colorNeutral47
        }
    }
}

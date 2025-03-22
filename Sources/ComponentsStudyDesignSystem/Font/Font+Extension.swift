//
//  Font+Extension.swift
//  ComponentsStudyDesignSystem
//
//  Created by Guilherme Ferreira Lenzolari on 14/03/25.
//

import SwiftUI

@available(iOS 13.0, *)
extension Font {
    public static let labelExtraLargeEmphasized: Font = {
        return Font.system(size: 28, weight: .semibold)
  }()
  
    public static let labelLargeEmphasized: Font = {
        return Font.system(size: 20, weight: .semibold)
  }()
    
    public static let labelMediumEmphasized: Font = {
        return Font.system(size: 16, weight: .semibold)
  }()
    
    public static let labelSmallEmphasized: Font = {
        return Font.system(size: 8, weight: .semibold)
  }()
}

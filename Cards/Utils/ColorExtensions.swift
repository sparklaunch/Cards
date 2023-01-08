//
//  ColorExtensions.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

extension Color {
    static let colors: [Self] = [.green, .red, .blue, .gray, .yellow, .pink, .orange, .purple]
    static func random() -> Self {
        return colors.randomElement() ?? .black
    }
}

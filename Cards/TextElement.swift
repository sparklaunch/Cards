//
//  TextElement.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/15.
//

import SwiftUI

struct TextElement: CardElement {
    let id = UUID()
    var transform: Transform
    var text = ""
    var textColor: Color = .black
    var textFont = "San Francisco"
}

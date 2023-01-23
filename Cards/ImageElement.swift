//
//  ImageElement.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/15.
//

import SwiftUI

struct ImageElement: CardElement {
    let id = UUID()
    var transform: Transform = .init()
    var image: Image
}

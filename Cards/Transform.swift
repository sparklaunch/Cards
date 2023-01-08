//
//  Transform.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct Transform {
    var size: CGSize = .init(width: Settings.defaultElementSize.width, height: Settings.defaultElementSize.height)
    var rotation: Angle = .zero
    var offset: CGSize = .zero
}

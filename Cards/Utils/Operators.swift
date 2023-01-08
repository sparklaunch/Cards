//
//  Operators.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

func +(left: CGSize, right: CGSize) -> CGSize {
    return .init(width: left.width + right.width, height: left.height + right.height)
}

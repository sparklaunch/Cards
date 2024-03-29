//
//  ViewExtensions.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

extension View {
    func resizableView(transform: Binding<Transform>) -> some View {
        return modifier(ResizableView(transform: transform))
    }
}

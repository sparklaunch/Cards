//
//  ResizableView.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct ResizableView: View {
    @State private var previousRotation: Angle = .zero
    @State private var transform: Transform = .init()
    @State private var previousOffset: CGSize = .zero
    private let content = RoundedRectangle(cornerRadius: 30.0, style: .continuous)
    private let color: Color = .red
    var body: some View {
        let rotationGesture = RotationGesture()
            .onChanged { rotation in
                transform.rotation += rotation - previousRotation
                previousRotation = rotation
            }
            .onEnded { _ in
                previousRotation = .zero
            }
        let dragGesture = DragGesture()
            .onChanged { value in
                transform.offset = value.translation + previousOffset
            }
            .onEnded { _ in
                previousOffset = transform.offset
            }
        content
            .frame(width: transform.size.width, height: transform.size.height)
            .foregroundColor(color)
            .rotationEffect(transform.rotation)
            .offset(transform.offset)
            .gesture(dragGesture)
            .gesture(rotationGesture)
    }
}

struct ResizableView_Previews: PreviewProvider {
    static var previews: some View {
        ResizableView()
    }
}

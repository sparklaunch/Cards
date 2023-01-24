//
//  PencilView.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/24.
//

import SwiftUI
import PencilKit

struct PencilView: UIViewRepresentable {
    @State private var pkCanvasView = PKCanvasView()
    func makeUIView(context: Context) -> some UIView {
        pkCanvasView.drawingPolicy = .anyInput
        return pkCanvasView
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        // NOTHING TO DO.
    }
}

struct PencilView_Previews: PreviewProvider {
    static var previews: some View {
        PencilView()
    }
}

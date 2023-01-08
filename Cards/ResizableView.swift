//
//  ResizableView.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct ResizableView: View {
    @State private var transform: Transform = .init()
    private let content = RoundedRectangle(cornerRadius: 30.0, style: .continuous)
    private let color: Color = .red
    var body: some View {
        content
            .frame(width: transform.size.width, height: transform.size.height)
            .foregroundColor(color)
    }
}

struct ResizableView_Previews: PreviewProvider {
    static var previews: some View {
        ResizableView()
    }
}

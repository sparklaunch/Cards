//
//  CardBottomToolbar.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct CardBottomToolbar: View {
    @Binding var cardModal: CardModal?
    var body: some View {
        HStack {
            Button {
                cardModal = .photoPicker
            } label: {
                ToolbarButtonView(modal: .photoPicker)
            }
            Button {
                cardModal = .framePicker
            } label: {
                ToolbarButtonView(modal: .framePicker)
            }
            Button {
                cardModal = .stickerPicker
            } label: {
                ToolbarButtonView(modal: .stickerPicker)
            }
            Button {
                cardModal = .textPicker
            } label: {
                ToolbarButtonView(modal: .textPicker)
            }
        }
    }
}

struct CardBottomToolbar_Previews: PreviewProvider {
    static var previews: some View {
        CardBottomToolbar(cardModal: .constant(.stickerPicker))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

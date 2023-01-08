//
//  ToolbarButtonView.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct ToolbarButtonView: View {
    private let modalButton: [CardModal: (text: String, imageName: String)] = [
        .photoPicker: ("Photos", "photo"),
        .framePicker: ("Frames", "square.on.circle"),
        .stickerPicker: ("Stickers", "heart.circle"),
        .textPicker: ("Text", "textformat")
    ]
    let modal: CardModal
    var body: some View {
        let text = modalButton[modal]!.text
        let imageName = modalButton[modal]!.imageName
        return VStack {
            Image(systemName: imageName)
                .font(.largeTitle)
            Text(text)
        }
        .padding(.top)
    }
}

struct ToolbarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarButtonView(modal: .textPicker)
    }
}

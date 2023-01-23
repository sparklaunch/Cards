//
//  StickerPicker.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/23.
//

import SwiftUI

struct StickerPicker: View {
    var body: some View {
        Group {
            if let resourcePath = Bundle.main.resourcePath, let image = UIImage(named: resourcePath + "/Stickers/Camping/fire.png") {
                Image(uiImage: image)
            } else {
                EmptyView()
            }
        }
    }
}

struct StickerPicker_Previews: PreviewProvider {
    static var previews: some View {
        StickerPicker()
    }
}

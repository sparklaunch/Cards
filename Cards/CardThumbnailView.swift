//
//  CardThumbnailView.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct CardThumbnailView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15, style: .continuous)
            .foregroundColor(.random())
            .frame(width: Settings.thumbnailSize.width, height: Settings.thumbnailSize.height)
    }
}

struct CardThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        CardThumbnailView()
    }
}

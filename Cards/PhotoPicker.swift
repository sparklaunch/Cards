//
//  PhotoPicker.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/23.
//

import SwiftUI

struct PhotoPicker: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let label = UILabel()
        label.text = "Hello UIKit!"
        return label
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        // NOTHING TO DO…
    }
}

struct PhotoPicker_Previews: PreviewProvider {
    static var previews: some View {
        PhotoPicker()
    }
}

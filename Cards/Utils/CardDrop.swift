//
//  CardDrop.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/24.
//

import SwiftUI

struct CardDrop: DropDelegate {
    @Binding var card: Card
    func performDrop(info: DropInfo) -> Bool {
        let itemProviders = info.itemProviders(for: [.image])
        for itemProvider in itemProviders {
            if itemProvider.canLoadObject(ofClass: UIImage.self) {
                itemProvider.loadObject(ofClass: UIImage.self) { image, error in
                    if let error {
                        print(error.localizedDescription)
                    } else {
                        if let image = image as? UIImage {
                            DispatchQueue.main.async {
                                card.addElement(uiImage: image)
                            }
                        }
                    }
                }
            }
        }
        return true
    }
}

//
//  CardModal.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import Foundation

enum CardModal: Identifiable {
    var id: Int {
        hashValue
    }
    case photoPicker, framePicker, stickerPicker, textPicker
}

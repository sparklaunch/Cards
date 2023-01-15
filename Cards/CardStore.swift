//
//  CardStore.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/15.
//

import SwiftUI

class CardStore: ObservableObject {
    @Published var cards: [Card] = []
    init(defaultData: Bool = false) {
        if defaultData {
            cards = initialCards
        }
    }
}

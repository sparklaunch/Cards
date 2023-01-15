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
    func index(for card: Card) -> Int? {
        return cards.firstIndex { innerCard in
            return innerCard.id == card.id
        }
    }
}

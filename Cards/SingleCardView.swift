//
//  SingleCardView.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct SingleCardView: View {
    @EnvironmentObject var store: CardStore
    @EnvironmentObject var viewState: ViewState
    var body: some View {
        if let selectedCard = viewState.selectedCard, let index = store.index(for: selectedCard) {
            NavigationView {
                CardDetailView(card: $store.cards[index])
                    .navigationBarTitleDisplayMode(.inline)
            }
            .navigationViewStyle(.stack)
        }
    }
}

struct SingleCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCardView()
            .environmentObject(ViewState(card: initialCards[0]))
            .environmentObject(CardStore(defaultData: true))
    }
}

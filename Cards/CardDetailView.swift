//
//  CardDetailView.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct CardDetailView: View {
    @State private var currentModal: CardModal?
    @EnvironmentObject var viewState: ViewState
    var body: some View {
        Color.yellow
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        viewState.showAllCards.toggle()
                    }
                }
                ToolbarItem(placement: .bottomBar) {
                    CardBottomToolbar(cardModal: $currentModal)
                }
            }
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView()
            .environmentObject(ViewState())
    }
}

//
//  CardDetailView.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct CardDetailView: View {
    @Binding var card: Card
    @State private var currentModal: CardModal?
    @EnvironmentObject var viewState: ViewState
    var body: some View {
        content
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
    var content: some View {
        ZStack {
            Capsule()
                .foregroundColor(.yellow)
                .resizableView()
            Text("Resize Me!")
                .font(.system(size: 500))
                .minimumScaleFactor(0.01)
                .lineLimit(1)
                .resizableView()
            Circle()
                .resizableView()
                .offset(.init(width: 50, height: 200))
        }
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView(card: .constant(initialCards.first!))
            .environmentObject(ViewState())
    }
}

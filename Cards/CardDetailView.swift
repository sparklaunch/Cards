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
            card.backgroundColor
                .edgesIgnoringSafeArea(.all)
            ForEach(card.elements, id: \.id) { element in
                CardElementView(element: element)
                    .resizableView(transform: bindingTransform(for: element))
                    .contextMenu {
                        Button {
                            card.remove(element)
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                    }
                    .frame(width: element.transform.size.width, height: element.transform.size.height)
            }
        }
    }
    func bindingTransform(for element: CardElement) -> Binding<Transform> {
        guard let index = element.index(in: card.elements) else {
            fatalError("Element does not exist")
        }
        return $card.elements[index].transform
    }
}

struct CardDetailView_Previews: PreviewProvider {
    struct CardDetailPreview: View {
        @State private var card = initialCards[0]
        var body: some View {
            CardDetailView(card: $card)
                .environmentObject(ViewState(card: card))
        }
    }
    static var previews: some View {
        CardDetailPreview()
    }
}

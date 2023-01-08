//
//  SingleCardView.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct SingleCardView: View {
    @EnvironmentObject var viewState: ViewState
    var body: some View {
        NavigationView {
            Color.yellow
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Done") {
                            viewState.showAllCards.toggle()
                        }
                    }
            }
        }
    }
}

struct SingleCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCardView()
            .environmentObject(ViewState())
    }
}

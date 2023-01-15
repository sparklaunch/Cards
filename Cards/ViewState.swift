//
//  ViewState.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

class ViewState: ObservableObject {
    @Published var showAllCards = true
    var selectedCard: Card?
}

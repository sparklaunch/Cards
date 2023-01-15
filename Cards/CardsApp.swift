//
//  CardsApp.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

@main
struct CardsApp: App {
    @StateObject var viewState = ViewState()
    @StateObject var store = CardStore(defaultData: true)
    var body: some Scene {
        WindowGroup {
            CardsView()
                .environmentObject(viewState)
                .environmentObject(store)
        }
    }
}

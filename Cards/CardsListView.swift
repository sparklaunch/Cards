//
//  CardsListView.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct CardsListView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<10) { _ in
                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .foregroundColor(.gray)
                        .frame(width: 150, height: 250)
                }
            }
        }
    }
}

struct CardsListView_Previews: PreviewProvider {
    static var previews: some View {
        CardsListView()
    }
}

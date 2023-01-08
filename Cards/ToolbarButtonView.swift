//
//  ToolbarButtonView.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct ToolbarButtonView: View {
    var body: some View {
        VStack {
            Image(systemName: "heart.circle")
                .font(.largeTitle)
            Text("Stickers")
        }
        .padding(.top)
    }
}

struct ToolbarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarButtonView()
    }
}

//
//  CardElementView.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/23.
//

import SwiftUI

struct CardElementView: View {
    let element: CardElement
    var body: some View {
        if let element = element as? ImageElement {
            ImageElementView(element: element)
        }
        if let element = element as? TextElement {
            TextElementView(element: element)
        }
    }
}

struct CardElementView_Previews: PreviewProvider {
    static var previews: some View {
        CardElementView(element: initialElements[0])
    }
}

struct ImageElementView: View {
    let element: ImageElement
    var body: some View {
        element.image
            .resizable()
            .scaledToFit()
    }
}

struct TextElementView: View {
    let element: TextElement
    var body: some View {
        if !element.text.isEmpty {
            Text(element.text)
                .font(.custom(element.textFont, size: 200))
                .foregroundColor(element.textColor)
                .scalableText()
        }
    }
}

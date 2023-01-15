//
//  CardElementExtensions.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/15.
//

import SwiftUI

extension CardElement {
    func index(in array: [Self]) -> Int? {
        return array.firstIndex { item in
            return item.id == id
        }
    }
}

//
//  CardElement.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/15.
//

import SwiftUI

protocol CardElement {
    var id: UUID { get }
    var transform: Transform { get set }
}

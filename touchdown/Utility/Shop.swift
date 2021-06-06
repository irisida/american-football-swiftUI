//
//  Shop.swift
//  touchdown
//
//  Created by ed on 06/06/2021.
//

import Foundation


class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}

//
//  CategoryModel.swift
//  touchdown
//
//  Created by ed on 05/06/2021.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}

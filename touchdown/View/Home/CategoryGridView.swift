//
//  CategoryGridView.swift
//  touchdown
//
//  Created by ed on 05/06/2021.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - properties
    
    
    // MARK: - body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)) {
                    ForEach (categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            }) // grid
            .frame(height: 140)
            .padding(.horizontal)
            .padding(.vertical, 8)
        }) // scrollview
    }
}

// MARK: - preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}

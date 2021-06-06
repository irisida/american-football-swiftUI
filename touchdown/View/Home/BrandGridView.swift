//
//  BrandGridView.swift
//  touchdown
//
//  Created by ed on 05/06/2021.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - properties
    
    // MARK: - body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            }) // grid
            .frame(height: 200)
            .padding()
            
        })
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}

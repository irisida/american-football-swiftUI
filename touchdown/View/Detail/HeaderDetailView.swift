//
//  HeaderDetailView.swift
//  touchdown
//
//  Created by ed on 05/06/2021.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - properties
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ??  sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
        }) // Vstack
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}

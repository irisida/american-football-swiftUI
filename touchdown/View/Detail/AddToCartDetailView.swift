//
//  AddToCartDetailView.swift
//  touchdown
//
//  Created by ed on 06/06/2021.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - properties
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            // ceate a full width button
            Spacer()
            
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .shadow(color: Color.black.opacity(0.15), radius: 4, x: 1, y: 4)
            
            Spacer()
        }) // button
        .padding()
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())
        .shadow(color: Color.black.opacity(0.15), radius: 8, x: 1, y: 4)
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

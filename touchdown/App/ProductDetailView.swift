//
//  ProductDetailView.swift
//  touchdown
//
//  Created by ed on 05/06/2021.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - properties
    @EnvironmentObject var shop: Shop
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8, content: {
            // navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // header
            HeaderDetailView()
                .padding(.horizontal)
            
            // detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // detail bottom part
            VStack(alignment: .center, spacing: 0, content: {
                // rating and sizes
                RatingsSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom)
                
                // desc
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                
                // quantity & favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical)
                
                // add to cart
                AddToCartDetailView()
                    .padding(.bottom, 24)
                
            }) // Vstack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
        }) // VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        ).ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}

//
//  TopPartDetailView.swift
//  touchdown
//
//  Created by ed on 06/06/2021.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - properties
    @State private var isAnimating: Bool = false
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack(alignment: .center, spacing: 8, content: {
            // price
            VStack(alignment: .leading, spacing: 8, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.25, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            // photo
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
        }) //HStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.9)) {
                isAnimating.toggle()
            }
        })
        
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

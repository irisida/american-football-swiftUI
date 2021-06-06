//
//  ContentView.swift
//  touchdown
//
//  Created by ed on 04/06/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - properties
    let screen = UIScreen.main.bounds
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - body
    var body: some View {
        VStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                ZStack {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 16)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: .black.opacity(0.075), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .padding(.vertical, 24)
                                .frame(width: screen.width, height: screen.height / 3)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            })
                            .padding()
                            
                            TitleView(title: "Brands")
                            BrandGridView()
                            
                                                        
                            FooterView()
                                .padding()
                        } // VStack
                    }) // scrollview
                    
                    
                } // VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } // ZStack
                .ignoresSafeArea(.all, edges: .top)
            } else {
                ProductDetailView()
            }
        }
    }
}


// MARK: - preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}

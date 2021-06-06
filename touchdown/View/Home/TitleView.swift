//
//  TitleView.swift
//  touchdown
//
//  Created by ed on 05/06/2021.
//

import SwiftUI

struct TitleView: View {
    // MARK: - properties
    var title: String
    
    // MARK: - body
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        } // HStack
        .padding(.horizontal)
        .padding(.top)
        .padding(.bottom, 8)
    }
}

// MARK: - preview
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmets")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
